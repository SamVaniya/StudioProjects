import 'package:flutter/material.dart';
import 'package:gramdhan/ProfileBuildingScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Image.asset(
                'assets/images/logo.jpg', // Replace with your app logo path
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enter PIN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _pinController,
              decoration: InputDecoration(
                hintText: 'Enter PIN',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
              maxLength: 4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check if the PIN is correct (For demonstration, comparing with '1234')
                if (_pinController.text == '1234') {
                  // Navigate to the next screen if the PIN is correct
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileBuildingScreen()),
                  );
                } else {
                  // Show a snackbar if the PIN is incorrect
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect PIN')),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
