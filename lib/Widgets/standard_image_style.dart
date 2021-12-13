import 'package:flutter/material.dart';

class StandardImageStyle extends StatelessWidget {
  const StandardImageStyle({Key? key, required this.link}) : super(key: key);
  final String link;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          link,
          width: 280,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.vertical(
              bottom: (Radius.circular(20)),
            ),
          ),
          height: 50,
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: const [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.white,
                ),
                Text(
                  'Apartment location',
                  textWidthBasis: TextWidthBasis.parent,
                  softWrap: true,
                  maxLines: 1,
                  style: TextStyle(
                    overflow: TextOverflow.fade,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ]),
              const Text(
                '\$300000',
                maxLines: 1,
                style: TextStyle(
                  overflow: TextOverflow.fade,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
