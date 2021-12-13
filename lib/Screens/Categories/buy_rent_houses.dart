import 'package:flutter/material.dart';

class BuyAndRentHouses extends StatelessWidget {
  const BuyAndRentHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buy And Rent Houses'),
        ),
        body: const Center(child: Text('Apartment')));
  }
}
