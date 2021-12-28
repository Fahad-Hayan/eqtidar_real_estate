import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class PiecesOfLand extends StatelessWidget {
  const PiecesOfLand({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        link:
            'https://www.wired.com/wp-content/uploads/archive/news/images/full/1671_f.jpg',
        price: 300000,
        location: 'Baghdad, Alshaab',
        phone: 07731678729,
        email: 'MohammedAwad@gmail.com',
        description: 'lorem ipsum',
        area: 400,
        baths: 0,
        beds: 0,
        floor: 0,
        garage: 0,
        room: 0,
      ),
      StandardImageStyle(
        link:
            'https://s.abcnews.com/images/US/HT_erbil_dream_house_5_jt_141104_16x9_992.jpg',
        price: 240000,
        location: 'Erbil',
        phone: 0773457843,
        email: 'FahadHayan@gmail.com',
        description: 'lorem ipsum',
        area: 500,
        baths: 0,
        beds: 0,
        floor: 0,
        garage: 0,
        room: 0,
      ),
      StandardImageStyle(
        link:
            'https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2011/09/20/Foreign/Images/IRAQHOUSING%20034A_1316545560.jpg?t=20170517',
        price: 500000,
        location: 'Baghdad, Aldorah',
        phone: 0776687843,
        email: 'KadimAhmed@gmail.com',
        description: 'lorem ipsum',
        area: 300,
        baths: 0,
        beds: 0,
        floor: 0,
        garage: 0,
        room: 0,
      ),
      StandardImageStyle(
        link:
            'https://datafile4.arkadia.com/pictures/properties/w480h480/7-7086091-1526945589337041184.jpg',
        price: 320000,
        location: 'Baghdad, Alaadamiah',
        phone: 0773497733,
        email: 'OmarFaruk@gmail.com',
        description: 'lorem ipsum',
        area: 700,
        baths: 0,
        beds: 0,
        floor: 0,
        garage: 0,
        room: 0,
      ),
      SizedBox(),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: 'Pieces of Lannds'),
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
