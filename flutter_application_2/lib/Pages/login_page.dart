import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn(BuildContext context) {
    if (_usernameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      // Your login logic here
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Show a pop-up message if either username or password is not entered
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter both username and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0099FF), // Light Blue
              Color(0xFF4F5DFF), // Purple
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 3, // 65% of the width
                child: Container(
                  child: Center(
                    child: Text(
                      'Left Section',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 1.0,
                color: Colors.white,
              ),
              Expanded(
                flex: 2, // 35% of the width
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter username',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey[400], // Light grey
                          ),
                          style:
                              TextStyle(color: Colors.black), // Dark text color
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey[400], // Light grey
                          ),
                          style:
                              TextStyle(color: Colors.black), // Dark text color
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () => _signIn(context),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF004080), // Dark Blue
                        ),
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
