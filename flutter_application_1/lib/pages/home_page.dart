import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/pages/login_page.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageWidget({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class SplitBillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the content vertically
      crossAxisAlignment:
          CrossAxisAlignment.center, // Center the content horizontally
      children: [
        InkWell(
          onTap: () {
            // Handle onTap for "Split Bills" image if needed
          },
          child: Ink.image(
            image: AssetImage("assets/images/split_bill.png"),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Split Bills',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

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
        child: ListView(
          children: [
            ImageWidget(
              imagePath: "assets/images/saving_logo.png",
              title: 'Savings',
            ),
            SizedBox(height: 16),
            SplitBillsWidget(),
            SizedBox(height: 16),
            ImageWidget(
              imagePath: "assets/images/Finance_Analysis.png",
              title: 'Finance Analysis',
            ),
            SizedBox(height: 16),
            ImageWidget(
              imagePath: "assets/images/investment_logo.png",
              title: 'Investments',
            ),
          ],
        ),
      ),
    );
  }
}
