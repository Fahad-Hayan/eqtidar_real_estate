import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../details_page.dart';

class EqtiidarForConsulting extends StatelessWidget {
  const EqtiidarForConsulting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(title: 'Eqtidar For Consulting'),
        body: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(
                    'WHAT WE CAN DO FOR YOU\n\n',
                    style: GoogleFonts.balsamiqSans(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "BEFORE BUYING\n",
                        style: GoogleFonts.balsamiqSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "-Help choose the place of residence.\n\n-Specialized real estate consultations.\n\n-Real estate tours along Baghdad Karkh and Rusafa, Erbil.\n\n\n",
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                        // textAlign: TextAlign.justify,
                      ),
                      Text(
                        "AFTER PURCHASE\n",
                        style: GoogleFonts.balsamiqSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "-We have a specialized team to follow up actions:\n\n-Bond of ownership (Tabu).\n\n-Receive the property and check their conformity to the contract.\n\n-Extract real estate residence.\n\n-Open bank account.\n\n-Property processing and accessories for use (decoration, brushes, water, gas and electricity).\n\n-Property Management: Raising, resale (as desired), follow-up taxes, fees and invoices Real Estate",
                        style: GoogleFonts.balsamiqSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                        // textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  Card(
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
                                "CONTACT US",
                                style: GoogleFonts.balsamiqSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                                textAlign: TextAlign.justify,
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
                                      info: '07731045724',
                                      icon: Icon(
                                        Icons.phone,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    contact(
                                      id: 'email',
                                      context: context,
                                      info: 'eqtidar_property@gmail.com',
                                      icon: Icon(
                                        Icons.alternate_email,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
