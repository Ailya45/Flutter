import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text("Hola mundo"),
        Text("Hola mundo", style: TextStyle(fontSize: 24)),
        Text(
          "Hola mundo",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text("Texto curvado", style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          "Texto curvado",
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            backgroundColor: Colors.amber,
          ),
        ),
        Text(
          "Decorated Text",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.black,
            decorationColor: Colors.red,
            fontSize: 30,
          ),
        ),
        Text("Texto espaciado", style: TextStyle(letterSpacing: 7)),
        Text(
          "Texto largo Texto largoTexto largoTexto largoTexto largoTexto largoTexto largoTexto largo",
          style: TextStyle(letterSpacing: 7, fontSize: 20),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
