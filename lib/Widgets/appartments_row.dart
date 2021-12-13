import 'package:flutter/material.dart';

class Appartments extends StatelessWidget {
  Appartments({Key? key}) : super(key: key);
  final rowList1 = [
    Row(
      children: [
        Image.asset('assets/images/SplashScreenLogo.jpg'),
      ],
    ),
    Row(
      children: [
        Image.asset('assets/images/SplashScreenLogo.jpg'),
      ],
    ),
    Row(
      children: [
        Image.asset('assets/images/SplashScreenLogo.jpg'),
      ],
    ),
    Row(
      children: [
        Image.asset('assets/images/SplashScreenLogo.jpg'),
      ],
    ),
    Row(
      children: [
        Image.asset('assets/images/SplashScreenLogo.jpg'),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: rowList1.length,
        itemBuilder: (context, index) {
          return rowList1[index];
        });
  }
}
