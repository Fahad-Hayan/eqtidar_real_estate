import 'dart:convert';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:eqtidar_app/Models/api/categories.dart';
import 'package:eqtidar_app/Models/api/unit.dart';
import 'package:eqtidar_app/Screens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

late Future<List<Unit>> unitRec;
late Future<List<Categories>> categoriesRec;

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  initState() {
    super.initState();
    unitRec = fetchUnit();
    categoriesRec = fetchCategories();
  }

  Future<List<Unit>> fetchUnit() async {
    http.Response res = await http
        .get(Uri.parse('https://selfishmachine.pythonanywhere.com/api/unit'));
    if (res.statusCode == 200) {
      debugPrint('unit: ${res.body}');
      debugPrint('unit: ${res.statusCode}');
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      // return MyModel.fromJson(json.decode(res.body));
      return parsed.map<Unit>((item) => Unit.fromJson(item)).toList();
    } else {
      throw Exception('can not load the data');
    }
  }

  Future<List<Categories>> fetchCategories() async {
    http.Response res = await http.get(
        Uri.parse('https://selfishmachine.pythonanywhere.com/api/Categorys'));
    if (res.statusCode == 200) {
      debugPrint('category: ${res.body}');
      debugPrint('category: ${res.statusCode}');
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      // return MyModel.fromJson(json.decode(res.body));
      return parsed
          .map<Categories>((item) => Categories.fromJson(item))
          .toList();
    } else {
      throw Exception('can not load the data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: EasySplashScreen(
        logo: Image.asset(
          'assets/images/EqtidarResize.png',
          // fit: BoxFit.cover,
          // scale: .7,
        ),
        logoSize: 150,
        navigator: Stack(alignment: Alignment.bottomCenter, children: const [
          MyMainScreen(),
          // Positioned(
          //     bottom: MediaQuery.of(context).size.height / 22.35,
          //     child: const MyFloatingActionButton()),
        ]),
        durationInSeconds: 4,
        showLoader: true,
        loadingText: Text(
          "Welcome",
          style: GoogleFonts.balsamiqSans(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
