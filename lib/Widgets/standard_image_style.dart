import 'package:eqtidar_app/Screens/details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardImageStyle extends StatelessWidget {
  const StandardImageStyle({
    Key? key,
    required this.link,
    required this.price,
    required this.location,
  }) : super(key: key);
  final String link;
  final String location;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: [
      InkWell(
        splashColor: Theme.of(context).primaryColor.withOpacity(.5),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return MyDetailsPage(
                  location: location,
                  price: price,
                  description:
                      'This stunning two-story home is on a large lot in a hot neighborhood. From the open-concept kitchen and living space to the large shaded backyard, there is plenty of room for the whole family to enjoy. Recent updates include new carpeting upstairs and stainless appliances. Situated in a family-friendly neighborhood near a great park, this home is sure to go fast!',
                );
              },
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            link,
            width: 280,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.vertical(
              bottom: (Radius.circular(20)),
            ),
          ),
          height: 60,
          width: 280,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_pin,
                        size: 20,
                        color: Theme.of(context).primaryColor.withOpacity(.9)),
                    Text(
                      location,
                      textWidthBasis: TextWidthBasis.parent,
                      softWrap: true,
                      maxLines: 1,
                      style: GoogleFonts.balsamiqSans(
                          fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money,
                        size: 22,
                        color: Theme.of(context).primaryColor.withOpacity(.9)),
                    Text(
                      '$price',
                      maxLines: 1,
                      style: GoogleFonts.balsamiqSans(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
