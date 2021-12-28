import 'package:eqtidar_app/Screens/details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardImageStyle extends StatelessWidget {
  const StandardImageStyle({
    Key? key,
    required this.link,
    required this.price,
    required this.location,
    required this.description,
    required this.phone,
    required this.email,
    required this.room,
    required this.area,
    required this.baths,
    required this.garage,
    required this.floor,
    required this.beds,
  }) : super(key: key);
  final String link;
  final String location;
  final int price;
  final String description;
  final int phone;
  final String email;
  final int room;

  final int area;

  final int baths;

  final int garage;

  final int beds;

  final int floor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                description: description,
                phone: phone,
                email: email,
                area: area,
                baths: baths,
                beds: beds,
                floor: floor,
                garage: garage,
                room: room,
              );
            },
          ),
        );
      },
      child: Stack(fit: StackFit.passthrough, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            link,
            width: 300,
            height: 220,
            fit: BoxFit.cover,
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
            width: 300,
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
                          color:
                              Theme.of(context).primaryColor.withOpacity(.9)),
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
                          color:
                              Theme.of(context).primaryColor.withOpacity(.9)),
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
      ]),
    );
  }
}
