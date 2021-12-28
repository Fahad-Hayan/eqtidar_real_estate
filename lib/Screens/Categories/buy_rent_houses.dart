import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class BuyAndRentHouses extends StatelessWidget {
  const BuyAndRentHouses({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        // link:
        //     'http://iraq.arabsclassifieds.com/images/2017/11/15/87/2-erbil-hewler-house-to-rent-in-erbil-kurdistan-iraq_1.jpg',
        link:
            'https://i.pinimg.com/originals/e5/e9/fc/e5e9fcb3d0435b2f2616989c0957412a.jpg',
        price: 300000,
        location: 'Baghdad, Alshaab',
      ),
      StandardImageStyle(
        link:
            'https://s3.amazonaws.com/images-aarz/uploads/properties/2018/4/20-marla-house-for-sale-in-dha-phase-7-karachi-for-rs-105-crore-160780-image-1-actual.jpg',
        price: 240000,
        location: 'Erbil',
      ),
      StandardImageStyle(
        link:
            'https://ap.rdcpix.com/c2ae66a7700cbf7bb28064df264aa134l-m3216475794od-w480_h360.jpg',
        price: 500000,
        location: 'Baghdad, Aldorah',
      ),
      StandardImageStyle(
        link:
            'https://cdnb.artstation.com/p/assets/images/images/001/851/085/large/peshraw-rozh-008.jpg?1453727908',
        price: 320000,
        location: 'Baghdad, Alaadamiah',
      ),
      SizedBox(),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: 'Buy/Rent Houses'),
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
