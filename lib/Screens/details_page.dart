import 'package:carousel_slider/carousel_slider.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List imgList = const [
  'https://picsum.photos/seed/491/600',
  'https://picsum.photos/seed/490/200',
  'https://picsum.photos/seed/489/600',
  'https://picsum.photos/seed/488/600',
];

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage(
      {required this.location,
      required this.description,
      required this.price,
      Key? key})
      : super(key: key);
  final String location;
  final int price;
  final String description;
  @override
  State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  Widget imgShape(String link) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        link,
        width: 350,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: const MyAppBar(title: 'Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 175,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: imgList.length,
                    itemBuilder: (BuildContext context, int index, _) {
                      return imgShape(imgList[index]);
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, _) {
                          setState(() {
                            _current = index;
                            debugPrint("$_current");
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,
                                      size: 42,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(.9)),
                                  Text(
                                    '${widget.price}',
                                    style: GoogleFonts.balsamiqSans(
                                      fontSize: 30,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_pin,
                                      size: 22,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(.9)),
                                  Text(
                                    widget.location,
                                    style: GoogleFonts.balsamiqSans(
                                      fontSize: 16,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                // Card(
                //   elevation: 1,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Column(children: [
                //     Container(
                //       color: Theme.of(context).primaryColor,
                //       height: 40,
                //       // width: double.infinity,
                //     ),
                //     detailsContent(
                //       count1: 10,
                //       count2: 300,
                //       count3: 2,
                //       text1: 'Room',
                //       text2: 'Area',
                //       text3: 'Bathroom',
                //       icon1: standardIcon(iconName: 'Room'),
                //       icon2: standardIcon(iconName: 'Area'),
                //       icon3: standardIcon(iconName: 'Bathroom'),
                //     ),
                //     detailsContent(
                //       count1: 1,
                //       count2: 2,
                //       count3: 2,
                //       text1: 'Garage',
                //       text2: 'Floor',
                //       text3: 'Bedroom',
                //       icon1: standardIcon(iconName: 'Garage'),
                //       icon2: standardIcon(iconName: 'Floor'),
                //       icon3: standardIcon(iconName: 'Bedroom'),
                //     ),
                //   ]),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Card(
                    color: Colors.black12,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 8),
                      child: Column(children: [
                        Text(
                          'Information',
                          style: GoogleFonts.balsamiqSans(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        detailsContent(
                          count1: 10,
                          count2: 300,
                          count3: 2,
                          text1: 'Room',
                          text2: 'Area',
                          text3: 'Bathroom',
                          icon1: standardIcon(iconName: 'Room'),
                          icon2: standardIcon(iconName: 'Area'),
                          icon3: standardIcon(iconName: 'Bathroom'),
                        ),
                        detailsContent(
                          count1: 1,
                          count2: 2,
                          count3: 2,
                          text1: 'Garage',
                          text2: 'Floor',
                          text3: 'Bedroom',
                          icon1: standardIcon(iconName: 'Garage'),
                          icon2: standardIcon(iconName: 'Floor'),
                          icon3: standardIcon(iconName: 'Bedroom'),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Card(
                    color: Colors.black12,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        child: Column(children: [
                          Text(
                            'Description',
                            style: GoogleFonts.balsamiqSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                            textAlign: TextAlign.justify,
                          ),
                          Text(widget.description,
                              style: GoogleFonts.balsamiqSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45))
                          // detailsContent(
                          //   count1: 10,
                          //   count2: 300,
                          //   count3: 2,
                          //   text1: 'Room',
                          //   text2: 'Area',
                          //   text3: 'Bathroom',
                          //   icon1: standardIcon(iconName: 'Room'),
                          //   icon2: standardIcon(iconName: 'Area'),
                          //   icon3: standardIcon(iconName: 'Bathroom'),
                          // ),
                          // detailsContent(
                          //   count1: 1,
                          //   count2: 2,
                          //   count3: 2,
                          //   text1: 'Garage',
                          //   text2: 'Floor',
                          //   text3: 'Bedroom',
                          //   icon1: standardIcon(iconName: 'Garage'),
                          //   icon2: standardIcon(iconName: 'Floor'),
                          //   icon3: standardIcon(iconName: 'Bedroom'),
                          // ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Icon standardIcon({required String iconName}) {
    if (iconName == 'Room') {
      return Icon(Icons.bedroom_parent_outlined,
          size: 40, color: Colors.grey[850]);
    } else if (iconName == 'Area') {
      return Icon(Icons.straighten_outlined, size: 40, color: Colors.grey[850]);
    } else if (iconName == 'Bathroom') {
      return Icon(Icons.bathtub_outlined, size: 40, color: Colors.grey[850]);
    } else if (iconName == 'Garage') {
      return Icon(Icons.garage_outlined, size: 40, color: Colors.grey[850]);
    } else if (iconName == 'Floor') {
      return Icon(Icons.table_rows_outlined, size: 40, color: Colors.grey[850]);
    } else {
      return Icon(Icons.bedroom_parent_outlined,
          size: 40, color: Colors.grey[850]);
    }
  }

  Padding detailsContent(
      {required int count1,
      required int count2,
      required int count3,
      required String text1,
      required String text2,
      required String text3,
      required Icon icon1,
      required Icon icon2,
      required Icon icon3}) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                icon1,
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$count1',
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text(text1,
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                icon2,
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('$count2',
                            style: GoogleFonts.balsamiqSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        text2 == 'Area'
                            ? Text(
                                'm',
                                style: GoogleFonts.balsamiqSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            : const SizedBox()
                      ],
                    ),
                    Text(text2,
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                icon3,
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$count3',
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text(text3,
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45)),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
