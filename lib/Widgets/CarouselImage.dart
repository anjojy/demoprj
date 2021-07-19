import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  final String image;

  CarouselImage({required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.fill,
                ),
                color: Colors.black12),
          )
        ],
      ),
    );
  }
}
