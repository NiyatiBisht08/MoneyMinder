// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/pages/login_page.dart'; // Import your login page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(215, 255, 255, 255),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Images aligned at the center with onTap gesture
            InkWell(
              onTap: () {
                // Navigate to the login page when the "Savings" image is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Align(
                alignment:
                    Alignment.center, // Align the "Savings" image to the center
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/images/saving_logo.png",
                      ),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        height:
                            8), // Add space between "Savings" image and text
                    Text(
                      'Savings',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Add some space between the images
            InkWell(
              onTap: () {
                // Handle onTap for "Finance Analysis" image if needed
              },
              child: Align(
                alignment: Alignment
                    .center, // Align the "Finance Analysis" image to the center
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/images/Finance_Analysis.png",
                      ),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        height:
                            8), // Add space between "Finance Analysis" image and text
                    Text(
                      'Finance Analysis',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Add some space between the images and text
            // Text and other content on the right
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
        ),
      ),
    );
  }
}
