import 'package:eqtidar_app/Screens/details_page.dart';
import 'package:flutter/material.dart';

class ImagesBuilder extends StatelessWidget {
  const ImagesBuilder({Key? key, required this.list}) : super(key: key);
  final List list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: SizedBox(
        height: 170.0,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: list[index],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )),
      ),
    );
  }
}
