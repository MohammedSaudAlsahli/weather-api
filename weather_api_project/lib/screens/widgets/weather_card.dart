import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    this.name,
    this.temp,
    this.condition,
    this.lastUpdate,
  });
  final String? name;
  final String? temp;
  final String? condition;
  final String? lastUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('$name'),
              Text('$temp'),
            ],
          ),
          Text('$lastUpdate'),
          Text('$condition'),
        ],
      ),
    );
  }
}
