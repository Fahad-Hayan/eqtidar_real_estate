import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchPage extends StatelessWidget {
  const MySearchPage({Key? key}) : super(key: key);
  // TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Saved'),
      body: Center(
          child: Text(
        'You didn\'t save any prorerty yet',
        style: GoogleFonts.balsamiqSans(fontSize: 18, color: Colors.grey[700]),
      )),
    );
  }
}
