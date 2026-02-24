import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40, width: double.infinity),
        Image.network(
          "https://es.japanspecialist.com/o/adaptive-media/image/3831248/large/1_mt_fuji.jpg?t=1756118442292",
        ),
        SizedBox(height: 40, width: double.infinity),
        Image.asset("assets/images/vivian_for_eus.png", fit: BoxFit.fitHeight),
      ],
    );
  }
}
