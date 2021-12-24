import 'package:eqtidar_app/Models/api/api_model.dart';
import 'package:eqtidar_app/Screens/home_page.dart';
import 'package:eqtidar_app/Screens/main_screen.dart';
import 'package:eqtidar_app/Widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

late Future<List<MyModel>> futureData;

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  initState() {
    super.initState();
    futureData = fetchData();
  }

  Future<List<MyModel>> fetchData() async {
    http.Response data = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (data.statusCode == 200) {
      debugPrint(data.body);
      final parsed = json.decode(data.body).cast<Map<String, dynamic>>();
      // return MyModel.fromJson(json.decode(data.body));
      return parsed.map<MyModel>((item) => MyModel.fromJson(item)).toList();
    } else {
      throw Exception('can not load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset('assets/images/SplashScreenLogo.jpg'),
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
