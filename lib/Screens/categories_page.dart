import 'package:eqtidar_app/Screens/Categories/apartments_complex.dart';
import 'package:eqtidar_app/Screens/Categories/buy_rent_houses.dart';
import 'package:eqtidar_app/Screens/Categories/eqtidar_for_service.dart';
import 'package:eqtidar_app/Screens/Categories/pieces_of_land.dart';
import 'package:eqtidar_app/Screens/Categories/sail_offer.dart';
import 'package:eqtidar_app/Screens/Categories/special_offers.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/category_builder.dart';
import 'package:flutter/material.dart';

class MyCategoriesPage extends StatelessWidget {
  const MyCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Categories'),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  StandardCategory(
                    title: 'APARTMENTS COMPLEX',
                    icon: Icon(
                      Icons.apartment,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    page: const ApartmentsComplex(),
                  ),
                  StandardCategory(
                    title: 'SAIL OFFERS',
                    icon: SizedBox(
                      child: Icon(
                        Icons.sell,
                        size: 50,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    page: const SailOffers(),
                  ),
                  StandardCategory(
                    title: 'BUY AND RENT HOUSES',
                    icon: Icon(
                      Icons.house,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    page: const BuyAndRentHouses(),
                  ),
                  StandardCategory(
                    title: 'PIECES OF LAND',
                    icon: Icon(
                      Icons.grass,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    page: const PiecesOfLand(),
                  ),
                  StandardCategory(
                    title: 'SPECIAL OFFERS',
                    icon: Icon(
                      Icons.attach_money,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    page: const SpecialOffers(),
                  ),
                  StandardCategory(
                    title: 'EQTIDAR FOR CONSULTING',
                    icon: Icon(
                      Icons.support_agent,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    page: const EqtiidarForConsulting(),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
