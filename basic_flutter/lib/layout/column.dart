import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Hola, soy Bermys"),
          Text("Hola, soy Bermys"),
          Text("Hola, soy Bermys"),
          Text("Hola, soy Bermys"),
          Text("Hola, soy Bermys"),
        ],
      ),
    );
  }
}
