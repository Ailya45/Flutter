import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_details_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailsResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero {{${superhero.name}}}")),
      body: Column(
        children: [
          Image.network(
            superhero.url,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment(0, -0.6),
          ),
          Text(
            superhero.name,
            style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic),
          ),
          Text(
            superhero.fullName,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: double.infinity,
            height: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PowerStatColumn(
                  value: superhero.powerStats.power,
                  stat: "Power",
                  color: Colors.red,
                ),
                PowerStatColumn(
                  value: superhero.powerStats.intelligence,
                  stat: "Intelligence",
                  color: Colors.blue,
                ),
                PowerStatColumn(
                  value: superhero.powerStats.strength,
                  stat: "Strength",
                  color: Colors.grey,
                ),
                PowerStatColumn(
                  value: superhero.powerStats.speed,
                  stat: "Speed",
                  color: Colors.green,
                ),
                PowerStatColumn(
                  value: superhero.powerStats.durability,
                  stat: "Durability",
                  color: Colors.purple,
                ),
                PowerStatColumn(
                  value: superhero.powerStats.combat,
                  stat: "Combat",
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PowerStatColumn extends StatelessWidget {
  final String stat;
  final String? value;
  final Color color;
  const PowerStatColumn({
    super.key,
    required this.stat,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: double.tryParse(value ?? "0") ?? 0,
          width: 20,
          color: color,
        ),
        Text(value ?? "0", style: TextStyle(fontSize: 14)),
        Text(stat, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
