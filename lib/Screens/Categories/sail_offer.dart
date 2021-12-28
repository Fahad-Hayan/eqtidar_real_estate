import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class SailOffers extends StatelessWidget {
  const SailOffers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        link:
            'https://s.abcnews.com/images/US/HT_erbil_dream_house_1_jt_141104_16x9_1600.jpg',
        price: 300000,
        location: 'Baghdad, Alshaab',
      ),
      StandardImageStyle(
        link:
            'https://s.abcnews.com/images/US/HT_erbil_dream_house_5_jt_141104_16x9_992.jpg',
        price: 240000,
        location: 'Erbil',
      ),
      StandardImageStyle(
        link:
            'https://www.kuna.net.kw/NewsPictures/2018/1/21/e2334240-1a2b-4497-9598-572b828e48a1.jpg',
        price: 500000,
        location: 'Baghdad, Aldorah',
      ),
      StandardImageStyle(
        link: 'https://live.staticflickr.com/4001/4645209568_5a39a43fb6_b.jpg',
        price: 320000,
        location: 'Baghdad, Alaadamiah',
      ),
      SizedBox(),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: 'Sail Offers'),
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
