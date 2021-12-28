import 'package:carousel_slider/carousel_slider.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

List imgList = const [
  'https://images.adsttc.com/media/images/5eb5/bb73/b357/65bd/2b00/0710/newsletter/Essam_Arafa_Title.jpg?1588968302',
  'https://mir-s3-cdn-cf.behance.net/project_modules/fs/6825ad60635095.5a546f65065ae.jpg',
  'http://prod-upp-image-read.ft.com/6e4a796a-c557-11e5-808f-8231cd71622e',
  'https://thetreemag.com/wp-content/uploads/2020/07/06_ORA_Dum_v_Ruine_BoysPlayNice-scaled.jpg',
];

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({
    required this.location,
    required this.description,
    required this.price,
    required this.email,
    required this.phone,
    required this.room,
    required this.area,
    required this.baths,
    required this.garage,
    required this.floor,
    required this.beds,
    Key? key,
  }) : super(key: key);
  final String location;
  final String price;
  final String description;
  final int phone;
  final String email;
  final int room;
  final int area;
  final int baths;
  final int garage;
  final int floor;
  final int beds;
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
        physics: const BouncingScrollPhysics(),
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
                                    widget.price,
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Card(
                    color: Colors.white,
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
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  detailsContent(
                                    count1: widget.room,
                                    count2: widget.area,
                                    count3: widget.baths,
                                    text1: 'Room',
                                    text2: 'Area',
                                    text3: 'Bathroom',
                                    icon1: standardIcon(iconName: 'Room'),
                                    icon2: standardIcon(iconName: 'Area'),
                                    icon3: standardIcon(iconName: 'Bathroom'),
                                  ),
                                  detailsContent(
                                    count1: widget.garage,
                                    count2: widget.floor,
                                    count3: widget.beds,
                                    text1: 'Garage',
                                    text2: 'Floor',
                                    text3: 'Bedroom',
                                    icon1: standardIcon(iconName: 'Garage'),
                                    icon2: standardIcon(iconName: 'Floor'),
                                    icon3: standardIcon(iconName: 'Bedroom'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 22),
                        child: Column(children: [
                          Text(
                            'Description',
                            style: GoogleFonts.balsamiqSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.description,
                            style: GoogleFonts.balsamiqSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                            textAlign: TextAlign.justify,
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Contact',
                                style: GoogleFonts.balsamiqSans(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    contact(
                                      id: 'phone',
                                      context: context,
                                      info: widget.phone.toString(),
                                      icon: Icon(
                                        Icons.phone,
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.6),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    contact(
                                      id: 'email',
                                      context: context,
                                      info: widget.email,
                                      icon: Icon(
                                        Icons.alternate_email,
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.6),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                // end of the column
              ],
            )
          ],
        ),
      ),
    );
  }

  Row contact(
      {required BuildContext context,
      required String info,
      required Icon icon,
      required String id}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon,
        GestureDetector(
          child: Row(
            children: [
              Text(id == 'phone' ? '0$info' : info,
                  style: GoogleFonts.balsamiqSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45)),
              IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: info));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Copied to Clipboard"),
                    ),
                  );
                },
                icon: const Icon(Icons.copy, color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }

  Icon standardIcon({required String iconName}) {
    if (iconName == 'Room') {
      return Icon(Icons.door_front_door_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
    } else if (iconName == 'Area') {
      return Icon(Icons.straighten_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
    } else if (iconName == 'Bathroom') {
      return Icon(Icons.bathtub_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
    } else if (iconName == 'Garage') {
      return Icon(Icons.garage_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
    } else if (iconName == 'Floor') {
      return Icon(Icons.table_rows_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
    } else {
      return Icon(Icons.bedroom_parent_outlined,
          size: 40, color: Theme.of(context).primaryColor.withOpacity(.6));
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
        padding: const EdgeInsets.only(top: 12, bottom: 10),
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
                const SizedBox(width: 20)
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
                            : const SizedBox(),
                      ],
                    ),
                    Text(text2,
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45))
                  ],
                ),
                const SizedBox(width: 20)
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
