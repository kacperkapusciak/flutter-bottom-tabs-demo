import 'package:flutter/material.dart';

class ImportantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important!'),
      ),
      body: Center(
        child: Icon(
          Icons.warning_outlined,
          size: 50.0,
          color: Colors.amber,
        ),
      ),
    );
  }
}
