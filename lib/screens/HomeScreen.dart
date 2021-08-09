import 'package:flutter/material.dart';

import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> _places = [
    "🏝️ Desert Island",
    "🏞️ National Park",
    "⛰️ Mountain",
    "🏰 Castle",
    "🗽 Statue of Liberty",
    "🌉 Bridge at Night",
    "🏦 Bank",
    "🏛️ Classical Building",
    "🏟️ Stadium",
    "🏪 Convenience Store",
    "🏫 School",
    "⛲ Fountain",
    "🌄 Sunrise Over Mountains",
    "🌆 Cityscape at Dusk",
    "🎡 Ferris Wheel",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: _places.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_places[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(place: _places[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
