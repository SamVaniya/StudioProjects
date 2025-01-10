import 'package:flutter/material.dart';
import 'package:gramdhan/LoginScreen.dart';

class SetPinScreen extends StatefulWidget {
  @override
  _SetPinScreenState createState() => _SetPinScreenState();
}

class _SetPinScreenState extends State<SetPinScreen> {
  TextEditingController _pinController = TextEditingController();
  TextEditingController _confirmPinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set PIN'),
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
              'Set PIN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please set a four-digit PIN to secure your account.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
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
            SizedBox(height: 10),
            TextField(
              controller: _confirmPinController,
              decoration: InputDecoration(
                hintText: 'Confirm PIN',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
              maxLength: 4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check if the PINs match
                if (_pinController.text == _confirmPinController.text && _pinController.text.length == 4) {
                  // Navigate to the next screen if PINs match and length is 4
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                } else {
                  // Show a snackbar if PINs do not match or length is not 4
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('PINs do not match or length is not 4')),
                  );
                }
              },
              child: Text('Set PIN'),
            ),
          ],
        ),
      ),
    );
  }
}
