// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://github.com/Veeransh14/Trial/blob/main/Veeransh1.jpg";

    return Drawer(
      child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                // decoration: BoxDecoration(color: Colors.deepPurple),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Veeransh"),
                  accountEmail: Text("veeransh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text("Home", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text("Profile", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.money_pound, color: Colors.white),
                title: Text("Wallet", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.white),
                title: Text("Mail", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.settings, color: Colors.white),
                title: Text("Settings", style: TextStyle(color: Colors.white)),
              ),
            ],
          )),
    );
  }
}
