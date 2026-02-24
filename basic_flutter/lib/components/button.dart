import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        SizedBox(height: 32, width: double.infinity),
        ElevatedButton(
          onPressed: () {
            print("Pulsado");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Soy un boton :)"),
          ),
          onLongPress: () {
            print("Pulsado largo");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
          ),
        ),
        OutlinedButton(onPressed: null, child: Text("Outline")),
        TextButton(onPressed: null, child: Text("Text Button")),
        FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        Spacer(),
      ],
    );
  }
}
