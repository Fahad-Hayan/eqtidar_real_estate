import 'package:eqtidar_app/Screens/Categories/apartments_complex.dart';
import 'package:eqtidar_app/Screens/Categories/buy_rent_houses.dart';
import 'package:eqtidar_app/Screens/Categories/eqtidar_for_service.dart';
import 'package:eqtidar_app/Screens/Categories/pieces_of_land.dart';
import 'package:eqtidar_app/Screens/Categories/sail_offer.dart';
import 'package:eqtidar_app/Screens/Categories/special_offers.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/standard_image_style.dart';
import 'package:eqtidar_app/Widgets/images_builder.dart';
import 'package:eqtidar_app/Widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List headline1 = const [
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
List headline2 = const [
  StandardImageStyle(
    link: 'https://picsum.photos/seed/391/600',
    price: 207000,
    location: 'Baghdad, Karradah',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/390/200',
    price: 600000,
    location: 'Baghdad, Bab Alsharjee',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/389/600',
    price: 410000,
    location: 'Baghdad, Hay Aljameaah',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/388/600',
    price: 320000,
    location: 'Baghdad, Alkadimeah',
  ),
  SizedBox(),
];
List headline3 = const [
  StandardImageStyle(
    link: 'https://picsum.photos/seed/291/600',
    price: 412000,
    location: 'Arbil',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/290/200',
    price: 523000,
    location: 'Baghdad, Alshaab',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/289/600',
    price: 342000,
    location: 'Arbil',
  ),
  StandardImageStyle(
    link: 'https://picsum.photos/seed/288/600',
    price: 243000,
    location: 'Baghdad, Hay Alaamel',
  ),
  SizedBox(),
];
Widget buldBanner(BuildContext ctx, String title, Widget page) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: TextButton(
      onPressed: () {
        Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
          return page;
        }));
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(ctx).primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        elevation: MaterialStateProperty.all(1),
      ),
      child: Text(title,
          style: GoogleFonts.balsamiqSans(
            fontSize: 16,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          )),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'null',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  buldBanner(
                      context, 'Apartments Complex', const ApartmentsComplex()),
                  buldBanner(context, 'Sail Offers', const SailOffers()),
                  buldBanner(
                      context, 'Buy and Rent Houses', const BuyAndRentHouses()),
                  buldBanner(context, 'Pieces of Land', const PiecesOfLand()),
                  buldBanner(context, 'Special Offers', const SpecialOffers()),
                  buldBanner(context, 'Eqtidar for Service',
                      const EqtiidarForConsulting()),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Label(
              label: 'Appartments',
            ),
            ImagesBuilder(list: headline1),
            const SizedBox(height: 20),
            const Label(
              label: 'Sale Offers',
            ),
            ImagesBuilder(list: headline2),
            const SizedBox(height: 20),
            const Label(
              label: 'Houses',
            ),
            ImagesBuilder(list: headline3),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
