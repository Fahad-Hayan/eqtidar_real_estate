import 'package:eqtidar_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        // title: const Text(
        //   'Eqtidar',
        //   style: TextStyle(color: Colors.black45),
        // ),

        // leading: title == 'Register' || title == 'Details'
        //     ? IconButton(
        //         onPressed: () {
        //           Navigator.of(context).pop();
        //         },
        //         icon: const Icon(Icons.arrow_back))
        //     : const SizedBox(),
        centerTitle: true,
        foregroundColor: Colors.black45,
        toolbarHeight: 70,
        title: title == 'null'
            ? const StandardTextField(
                hintText: 'Search for a home',
                icon: Icon(Icons.search),
              )
            : Text(
                title,
                style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
              ),
        actions: [
          if (title == 'null')
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list,
                  color: Colors.black45,
                  size: 35,
                ))
          else if (title == 'Details')
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                  size: 34,
                ))
          else
            const SizedBox()
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
