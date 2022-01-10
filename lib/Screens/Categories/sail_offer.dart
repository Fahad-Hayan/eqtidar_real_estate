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
        price: "207000",
        location: 'Baghdad, Karradah',
        phone: 0771244579,
        email: 'AbbasJameel@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 300,
        baths: 2,
        beds: 2,
        floor: 2,
        garage: 1,
        room: 8,
      ),
      StandardImageStyle(
        link:
            'https://s.abcnews.com/images/US/HT_erbil_dream_house_5_jt_141104_16x9_992.jpg',
        price: "600000",
        location: 'Baghdad, Bab Alsharjee',
        phone: 07731357259,
        email: 'KarrarFaruk@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 500,
        baths: 4,
        beds: 3,
        floor: 3,
        garage: 1,
        room: 15,
      ),
      StandardImageStyle(
        link:
            'https://www.kuna.net.kw/NewsPictures/2018/1/21/e2334240-1a2b-4497-9598-572b828e48a1.jpg',
        price: "410000",
        location: 'Baghdad, Hay Aljameaah',
        phone: 07731396729,
        email: 'MohammedKareem@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 200,
        baths: 2,
        beds: 2,
        floor: 1,
        garage: 1,
        room: 4,
      ),
      StandardImageStyle(
        link: 'https://live.staticflickr.com/4001/4645209568_5a39a43fb6_b.jpg',
        price: "320000",
        location: 'Baghdad, Alkadimeah',
        phone: 0771950628,
        email: 'YasserAhmed@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 400,
        baths: 4,
        beds: 4,
        floor: 3,
        garage: 1,
        room: 14,
      ),
      // SizedBox(),
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
