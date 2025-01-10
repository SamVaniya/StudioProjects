import 'package:flutter/material.dart';
import 'package:gramdhan/OtpVerificationScreen.dart';

class MobileNumberScreen extends StatefulWidget {
  @override
  _MobileNumberScreenState createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  String _selectedCountryCode = '+91'; // Default country calling code
  String mobileNumber = ''; // Store the entered mobile number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Enter Your Mobile Number',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We will send you an OTP to verify your mobile number.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    items: <String>['+1', '+91', '+44', '+61'] // Add your country calling codes
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedCountryCode = value ?? '+91';
                      });
                    },
                    value: _selectedCountryCode,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        mobileNumber = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your mobile number',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the OTP verification screen with the entered mobile number
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpVerificationScreen(mobileNumber: mobileNumber)),
                );
              },
              child: Text('Send OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Text('This is the OTP screen!'),
      ),
    );
  }
}
