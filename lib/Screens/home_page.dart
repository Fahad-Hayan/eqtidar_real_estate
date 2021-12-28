import 'package:eqtidar_app/Models/api/unit.dart';
import 'package:eqtidar_app/Screens/Categories/apartments_complex.dart';
import 'package:eqtidar_app/Screens/Categories/buy_rent_houses.dart';
import 'package:eqtidar_app/Screens/Categories/eqtidar_for_service.dart';
import 'package:eqtidar_app/Screens/Categories/pieces_of_land.dart';
import 'package:eqtidar_app/Screens/Categories/sail_offer.dart';
import 'package:eqtidar_app/Screens/Categories/special_offers.dart';
import 'package:eqtidar_app/Screens/splash_screen.dart';
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
    link:
        'https://www.erbilrealestate.net/wp-content/uploads/2019/11/01-400x300.jpg',
    price: "300000",
    location: 'Baghdad, Alshaab',
    phone: 07731556738,
    email: 'AliAyad@gmail.com',
    description: 'lorem ipsum',
    area: 200,
    baths: 1,
    beds: 1,
    floor: 1,
    garage: 1,
    room: 4,
  ),
  StandardImageStyle(
    link:
        'https://i.pinimg.com/originals/12/30/61/1230618eec80a6f2ecf2fd43cd353010.jpg',
    price: "240000",
    location: 'Erbil',
    phone: 07731123556,
    email: 'KareemNori@gmail.com',
    description: 'lorem ipsum',
    area: 300,
    baths: 2,
    beds: 3,
    floor: 2,
    garage: 1,
    room: 5,
  ),
  StandardImageStyle(
    link:
        'https://www.erbilrealestate.net/wp-content/uploads/2019/09/01-1-400x300.jpg',
    price: "500000",
    location: 'Baghdad, Aldorah',
    phone: 07731397889,
    email: 'AhmedFathe',
    description: 'lorem ipsum',
    area: 230,
    baths: 2,
    beds: 2,
    floor: 1,
    garage: 1,
    room: 4,
  ),
  StandardImageStyle(
    link:
        'https://i0.wp.com/media-cdn.tripadvisor.com/media/vr-splice-j/06/64/61/dc.jpg',
    price: "320000",
    location: 'Baghdad, Alaadamiah',
    phone: 07714596729,
    email: 'FahadSarmed@gmail.com',
    description: 'lorem ipsum',
    area: 400,
    baths: 4,
    beds: 4,
    floor: 3,
    garage: 1,
    room: 14,
  ),
  // SizedBox(),
];
List headline2 = const [
  StandardImageStyle(
    link:
        'https://s.abcnews.com/images/US/HT_erbil_dream_house_1_jt_141104_16x9_1600.jpg',
    price: "207000",
    location: 'Baghdad, Karradah',
    phone: 0771244579,
    email: 'AbbasJameel@gmail.com',
    description: 'lorem ipsum',
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
    description: 'lorem ipsum',
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
    description: 'lorem ipsum',
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
    description: 'lorem ipsum',
    area: 400,
    baths: 4,
    beds: 4,
    floor: 3,
    garage: 1,
    room: 14,
  ),
  // SizedBox(),
];
List headline3 = const [
  StandardImageStyle(
    link:
        'https://i.pinimg.com/originals/e5/e9/fc/e5e9fcb3d0435b2f2616989c0957412a.jpg',
    price: "412000",
    location: 'Erbil',
    phone: 07714830586,
    email: 'FatinArafat@gmail.com',
    description: 'lorem ipsum',
    area: 350,
    baths: 3,
    beds: 2,
    floor: 2,
    garage: 1,
    room: 8,
  ),
  StandardImageStyle(
    link:
        'https://s3.amazonaws.com/images-aarz/uploads/properties/2018/4/20-marla-house-for-sale-in-dha-phase-7-karachi-for-rs-105-crore-160780-image-1-actual.jpg',
    price: "523000",
    location: 'Baghdad, Alshaab',
    phone: 0782957153,
    email: 'OmarSalem@gmail.com',
    description: 'lorem ipsum',
    area: 250,
    baths: 2,
    beds: 1,
    floor: 2,
    garage: 1,
    room: 6,
  ),
  StandardImageStyle(
    link:
        'https://ap.rdcpix.com/c2ae66a7700cbf7bb28064df264aa134l-m3216475794od-w480_h360.jpg',
    price: "342000",
    location: 'Arbil',
    phone: 0781847540,
    email: 'Ahmedjumaa@gmail.com',
    description: 'lorem ipsum',
    area: 320,
    baths: 2,
    beds: 2,
    floor: 2,
    garage: 1,
    room: 6,
  ),
  StandardImageStyle(
    link:
        'https://cdnb.artstation.com/p/assets/images/images/001/851/085/large/peshraw-rozh-008.jpg?1453727908',
    price: "243000",
    location: 'Baghdad, Hay Alaamel',
    phone: 07731485926,
    email: 'AliFathel@gmail.com',
    description: 'Lorem ipsum',
    area: 350,
    baths: 2,
    beds: 2,
    floor: 1,
    garage: 1,
    room: 5,
  ),
  // SizedBox(),
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

Widget buildHomeBody(BuildContext context) {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
        const FLabel(
          label: 'Appartments',
        ),
        ImagesBuilder(list: headline1),
        const SizedBox(height: 20),
        const FLabel(
          label: 'Sale Offers',
        ),
        ImagesBuilder(list: headline2),
        const SizedBox(height: 20),
        const FLabel(
          label: 'Houses',
        ),
        ImagesBuilder(list: headline3),
        const SizedBox(height: 28),
      ],
    ),
  );
}

Widget buildUnitsList(List<Unit> unit) {
  return ListView.builder(
    itemCount: unit.length,
    itemBuilder: (_ctx, index) => buildHomeBody(_ctx),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'null',
      ),
      body: FutureBuilder<List<Unit>>(
          future: unitRec,
          builder: (BuildContext ctx, AsyncSnapshot<List<Unit>> snapshot) {
            if (snapshot.hasData) {
              // return Text('${snapshot.data[1].category.}');
              return buildHomeBody(context);
            } else if (snapshot.hasError) {
              // return Text('${snapshot.error}');
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          buldBanner(context, 'Apartments Complex',
                              const ApartmentsComplex()),
                          buldBanner(
                              context, 'Sail Offers', const SailOffers()),
                          buldBanner(context, 'Buy and Rent Houses',
                              const BuyAndRentHouses()),
                          buldBanner(
                              context, 'Pieces of Land', const PiecesOfLand()),
                          buldBanner(
                              context, 'Special Offers', const SpecialOffers()),
                          buldBanner(context, 'Eqtidar for Service',
                              const EqtiidarForConsulting()),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const FLabel(
                      label: 'Appartments',
                    ),
                    ImagesBuilder(list: headline1),
                    const SizedBox(height: 20),
                    const FLabel(
                      label: 'Sale Offers',
                    ),
                    ImagesBuilder(list: headline2),
                    const SizedBox(height: 20),
                    const FLabel(
                      label: 'Houses',
                    ),
                    ImagesBuilder(list: headline3),
                    const SizedBox(height: 28),
                    Text('${snapshot.error}'),
                  ],
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
