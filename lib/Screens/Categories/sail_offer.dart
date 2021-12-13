import 'package:flutter/material.dart';

class SailOffers extends StatelessWidget {
  const SailOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sail Offers'),
        ),
        body: const Center(child: Text('Apartment')));
  }
}
