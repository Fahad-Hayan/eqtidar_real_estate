import 'package:eqtidar_app/Screens/login_page.dart';
import 'package:eqtidar_app/Screens/register_page.dart';
import 'package:eqtidar_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Map<int, Color> color = const {
    50: Color.fromRGBO(179, 174, 34, .1),
    100: Color.fromRGBO(179, 174, 34, .2),
    200: Color.fromRGBO(179, 174, 34, .3),
    300: Color.fromRGBO(179, 174, 34, .4),
    400: Color.fromRGBO(179, 174, 34, .5),
    500: Color.fromRGBO(179, 174, 34, .6),
    600: Color.fromRGBO(179, 174, 34, .7),
    700: Color.fromRGBO(179, 174, 34, .8),
    800: Color.fromRGBO(179, 174, 34, .9),
    900: Color.fromRGBO(179, 174, 34, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eqtidar Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff827f1e, color),
        canvasColor: Colors.grey[200],
        primaryColor: const Color.fromRGBO(179, 174, 34, 1),
      ),
      // initialRoute: '/splashScreen',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   '/splashScreen': (context) => const MySplashScreen(),
      //   '/homeScreen': (context) => const MyHomePage(title: 'إقتدار'),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/loginScreen': (context) => const MyLoginPage(),
      //   '/signUpScreen': (context) => const MySignUpScreen(),
      // },
      home: const MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
