import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardCategory extends StatelessWidget {
  const StandardCategory(
      {Key? key, required this.icon, required this.title, required this.page})
      : super(key: key);
  final Widget icon;
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        splashColor: Theme.of(context).primaryColor.withOpacity(.5),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return page;
          }));
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            height: 75,
            width: 300,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon,
                  const SizedBox(
                    width: 26,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      // textAlign: TextAlign.justify,
                      style: GoogleFonts.balsamiqSans(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
