import 'package:eqtidar_app/Screens/home_page.dart';
import 'package:eqtidar_app/Screens/main_screen.dart';
import 'package:eqtidar_app/Widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset('assets/images/SplashScreenLogo.jpg'),
        logoSize: 150,
        navigator: Stack(alignment: Alignment.bottomCenter, children: [
          const MyMainScreen(),
          // Positioned(
          //     bottom: MediaQuery.of(context).size.height / 22.35,
          //     child: const MyFloatingActionButton()),
        ]),
        durationInSeconds: 1,
        showLoader: true,
        loadingText: const Text("Loading..."),
      ),
    );
  }
}
