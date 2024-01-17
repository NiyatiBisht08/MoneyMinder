// login_page.dart

// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn(BuildContext context) {
    // You can implement your authentication logic here
    // For simplicity, let's consider any non-empty email and password as a successful login
    if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Handle authentication failure, e.g., show an error message
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid email or password'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () => _signIn(context),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
