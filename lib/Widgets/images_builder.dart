import 'package:flutter/material.dart';

class ImagesBuilder extends StatelessWidget {
  const ImagesBuilder({Key? key, required this.list}) : super(key: key);
  final List list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 170.0,
        child: ListView.builder(
            // physics: ClampingScrollPhysics(),
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: InkWell(
                    splashColor: Theme.of(context).primaryColor.withOpacity(.5),
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      //   return page;
                      // }));
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: list[index],
                    ),
                  ),
                )),
      ),
    );
  }
}
