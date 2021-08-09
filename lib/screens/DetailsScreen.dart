import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({required this.place});

  final String place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place),
      ),
      body: Center(
        child: Text(place),
      ),
    );
  }
}
