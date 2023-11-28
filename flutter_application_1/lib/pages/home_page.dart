// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
//import '../../ios/models/catalog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatalogModel[0]);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: MyDrawer(),
    );
  }
}
