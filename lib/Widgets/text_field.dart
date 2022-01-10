import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardTextField extends StatefulWidget {
  const StandardTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    // required this.suficon,
  }) : super(key: key);
  final String hintText;
  final Widget icon;
  // final Widget suficon;

  @override
  State<StandardTextField> createState() => _StandardTextFieldState();
}

class _StandardTextFieldState extends State<StandardTextField> {
  bool passwoerdVisible = true;
  Widget suffixIcon(String hintText) {
    if (hintText == 'Password') {
      return IconButton(
          icon:
              Icon(passwoerdVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              passwoerdVisible = !passwoerdVisible;
            });
          });
    }
    // else if (hintText == 'null') {
    //   return IconButton(
    //       icon: const Icon(
    //         Icons.filter_list,
    //         color: Colors.black45,
    //         size: 35,
    //       ),
    //       onPressed: () {
    //         setState(() {
    //           const MySplashScreen();
    //         });
    //       });
    // }
    else {
      return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 1,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: TextFormField(
              cursorColor: Colors.black,
              // keyboardType: TextInputType.
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
                  child: widget.icon,
                ),
                hintStyle: GoogleFonts.balsamiqSans(),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.all(15.0),
                hintText: widget.hintText,
                suffixIcon: suffixIcon(widget.hintText),
              ),
              // keyboardType: TextInputType.visiblePassword,
              obscureText:
                  widget.hintText == 'Password' ? passwoerdVisible : false,
            ),
          ),
        ));
  }
}
