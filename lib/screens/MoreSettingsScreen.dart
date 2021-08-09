import 'package:flutter/material.dart';
import 'ImportantScreen.dart';

class MoreSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More settings'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImportantScreen(),
              ),
            );
          },
          child: Text('See important info'),
        ),
      ),
    );
  }
}
