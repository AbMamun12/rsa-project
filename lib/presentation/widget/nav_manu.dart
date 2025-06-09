import 'package:flutter/material.dart';

class NevMenu extends StatelessWidget {
  const NevMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('Home'),
              tileColor: Colors.grey.shade300,
            ),
            ListTile(
              title: Text('Home'),
              tileColor: Colors.pink,
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
