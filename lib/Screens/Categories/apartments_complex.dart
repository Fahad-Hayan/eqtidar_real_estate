import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class ApartmentsComplex extends StatelessWidget {
  const ApartmentsComplex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        link: 'https://picsum.photos/seed/491/600',
        price: 300000,
        location: 'Baghdad, Alshaab',
      ),
      StandardImageStyle(
        link: 'https://picsum.photos/seed/490/200',
        price: 240000,
        location: 'Arbil',
      ),
      StandardImageStyle(
        link: 'https://picsum.photos/seed/489/600',
        price: 500000,
        location: 'Baghdad, Aldorah',
      ),
      StandardImageStyle(
        link: 'https://picsum.photos/seed/488/600',
        price: 320000,
        location: 'Baghdad, Alaadamiah',
      ),
      SizedBox(),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: 'Apartments Complex'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              // physics: ClampingScrollPhysics(),
              // shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) => Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: list[index],
                      ),
                      const SizedBox(),
                    ],
                  )),
        ),
      ),
    );
  }
}
