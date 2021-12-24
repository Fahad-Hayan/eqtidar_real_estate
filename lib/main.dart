import 'package:eqtidar_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<int, Color> color = const {
  50: Color.fromRGBO(0, 200, 255, .1),
  100: Color.fromRGBO(0, 200, 255, .2),
  200: Color.fromRGBO(0, 200, 255, .3),
  300: Color.fromRGBO(0, 200, 255, .4),
  400: Color.fromRGBO(0, 200, 255, .5),
  500: Color.fromRGBO(0, 200, 255, .6),
  600: Color.fromRGBO(0, 200, 255, .7),
  700: Color.fromRGBO(0, 200, 255, .8),
  800: Color.fromRGBO(0, 200, 255, .9),
  900: Color.fromRGBO(0, 200, 255, 1),

  // 900: Color.fromRGBO(179, 174, 34, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eqtidar Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff00c8ff, color),
        canvasColor: Colors.grey[200],
        // primaryColor: const Color.fromRGBO(179, 174, 34, 1),
        primaryColor: const Color.fromRGBO(0, 200, 255, 1),
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
