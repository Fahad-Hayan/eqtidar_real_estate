import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class ApartmentsComplex extends StatelessWidget {
  const ApartmentsComplex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        link:
            'https://www.erbilrealestate.net/wp-content/uploads/2019/11/01-400x300.jpg',
        price: 300000,
        location: 'Baghdad, Alshaab',
      ),
      StandardImageStyle(
        link:
            'https://i.pinimg.com/originals/12/30/61/1230618eec80a6f2ecf2fd43cd353010.jpg',
        price: 240000,
        location: 'Erbil',
      ),
      StandardImageStyle(
        link:
            'https://www.erbilrealestate.net/wp-content/uploads/2019/09/01-1-400x300.jpg',
        price: 500000,
        location: 'Baghdad, Aldorah',
      ),
      StandardImageStyle(
        link:
            'https://i0.wp.com/media-cdn.tripadvisor.com/media/vr-splice-j/06/64/61/dc.jpg',
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
              physics: const BouncingScrollPhysics(),
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
