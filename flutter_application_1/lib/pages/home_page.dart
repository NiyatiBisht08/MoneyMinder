// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/pages/login_page.dart';

// ImageWidget class for displaying images with titles
class ImageWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageWidget({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: () {
          // Handle onTap for the image if needed
          if (title == 'Savings') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          } else if (title == 'Finance Analysis') {
            // Handle onTap for "Finance Analysis" image if needed
          } else if (title == 'Investments') {
            // Handle onTap for "Investment Logo" image if needed
          }
        },
        child: Column(
          children: [
            Ink.image(
              image: AssetImage(imagePath),
              width: 180, // Width same as "Investments"
              height: 180, // Height same as "Investments"
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 4, // Decreased spacing
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// SplitBillsWidget class for displaying "Split Bills" image with title
class SplitBillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Handle onTap for "Split Bills" image if needed
            },
            child: Ink.image(
              image: AssetImage("assets/images/split_bill.png"),
              width: 180, // Width same as "Investments"
              height: 180, // Height same as "Investments"
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 2, // Decreased spacing
          ),
          Text(
            'Split Bills',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// HomePage class for the main home page
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Decreased padding
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Shifted towards the top
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ImageWidget(
                          imagePath: "assets/images/saving_logo.png",
                          title: 'Savings',
                        ),
                        SizedBox(height: 4), // Decreased spacing
                        SplitBillsWidget(),
                      ],
                    ),
                  ),
                  SizedBox(width: 16), // Adjusted spacing
                  Expanded(
                    child: Column(
                      children: [
                        ImageWidget(
                          imagePath: "assets/images/Finance_Analysis.png",
                          title: 'Finance Analysis',
                        ),
                        SizedBox(height: 2), // Decreased spacing
                        ImageWidget(
                          imagePath: "assets/images/investment_logo.png",
                          title: 'Investments',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
