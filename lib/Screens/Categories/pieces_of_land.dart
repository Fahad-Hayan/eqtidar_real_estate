import 'package:flutter/material.dart';

class PiecesOfLand extends StatelessWidget {
  const PiecesOfLand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pices of Land'),
        ),
        body: const Center(child: Text('Apartment')));
  }
}
