import 'package:flutter/material.dart';
import 'package:gramdhan/PermissionPage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/welcome.jpg', // Replace with your image path
              width: 200, // Adjust image width as needed
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Our App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PermissionPage()),
                );
              },
              child: Text('Let\'s Go'),
            ),
          ],
        ),
      ),
    );
  }
}