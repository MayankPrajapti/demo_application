import 'package:demo_application/presentation/demo_2/demo2_screen.dart';
import 'package:demo_application/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 100),
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ));
            },
            title: Text("Demo1"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Demo2Screen();
                  },
                ));
              },
              title: Text("Demo2"),
              trailing: Icon(Icons.keyboard_arrow_right)),
        ],
      ),
    );
  }
}
