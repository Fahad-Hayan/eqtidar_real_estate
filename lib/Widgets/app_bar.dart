import 'package:eqtidar_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(

          // title: const Text(
          //   'Eqtidar',
          //   style: TextStyle(color: Colors.black45),
          // ),
          flexibleSpace: const FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            stretchModes: <StretchMode>[StretchMode.fadeTitle],
          ),
          toolbarHeight: 70,
          title: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              StandardTextField(
                hintText: 'Search for a location',
                icon: Icon(Icons.search),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list,
                  color: Colors.black45,
                  size: 35,
                )),
          ],
          elevation: 0,
          backgroundColor: Theme.of(context).canvasColor),
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
