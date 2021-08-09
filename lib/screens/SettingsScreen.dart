import 'package:flutter/material.dart';
import 'MoreSettingsScreen.dart';
import 'OtherSettingsScreen.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('More settings'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoreSettingsScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Other settings'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtherSettingsScreen(),
                  ),
                );
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
