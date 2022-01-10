import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List list = const [
      StandardImageStyle(
        link:
            'https://www.erbilrealestate.net/wp-content/uploads/2019/11/01-400x300.jpg',
        price: "300000",
        location: 'Baghdad, Alshaab',
        phone: 0773482824,
        email: 'AliFathel@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 450,
        baths: 3,
        beds: 3,
        floor: 2,
        garage: 1,
        room: 10,
      ),
      StandardImageStyle(
        link:
            'https://i.pinimg.com/originals/12/30/61/1230618eec80a6f2ecf2fd43cd353010.jpg',
        price: "240000",
        location: 'Erbil',
        phone: 0779967834,
        email: 'HaidarSalem@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 300,
        baths: 2,
        beds: 2,
        floor: 2,
        garage: 1,
        room: 7,
      ),
      StandardImageStyle(
        link:
            'https://www.erbilrealestate.net/wp-content/uploads/2019/09/01-1-400x300.jpg',
        price: "500000",
        location: 'Baghdad, Aldorah',
        phone: 0773586672,
        email: 'LaithSaad@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 250,
        baths: 1,
        beds: 1,
        floor: 1,
        garage: 0,
        room: 5,
      ),
      StandardImageStyle(
        link:
            'https://i0.wp.com/media-cdn.tripadvisor.com/media/vr-splice-j/06/64/61/dc.jpg',
        price: "320000",
        location: 'Baghdad, Alaadamiah',
        phone: 077679733,
        email: 'HatemNaif@gmail.com',
        description:
            'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
        area: 350,
        baths: 2,
        beds: 2,
        floor: 2,
        garage: 1,
        room: 7,
      ),
      SizedBox(),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: 'Special Offers'),
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
