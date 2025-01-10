import 'package:flutter/material.dart';
import 'package:gramdhan/ProfileBuildingScreen.dart';

class KYCVerificationScreen extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<KYCVerificationScreen> {
  TextEditingController _aadharNumberController = TextEditingController();
  TextEditingController _aadharOtpController = TextEditingController();
  TextEditingController _panNumberController = TextEditingController();
  TextEditingController _panOtpController = TextEditingController();

  bool _aadharOtpSent = false;
  bool _panOtpSent = false;

  bool _aadharOtpVerified = false;
  bool _panOtpVerified = false;

  String _aadharOtp = '';
  String _panOtp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KYC Verification'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your Aadhar number',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _aadharNumberController,
              decoration: InputDecoration(
                hintText: 'xxxx-xxxx-xxxx',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              maxLength: 14,
            ),
            SizedBox(height: 10),
            Text(
              'We will send you an OTP to verify your Aadhar number.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Dummy function to simulate sending OTP
                    setState(() {
                      _aadharOtpSent = true;
                      _aadharOtp = '123456'; // Dummy OTP
                    });
                  },
                  child: Text(_aadharOtpSent ? 'Resend OTP' : 'Send OTP'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _aadharOtpController,
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 10),
                _aadharOtpVerified
                    ? Icon(Icons.check_circle, color: Colors.green) // Green tick if OTP is verified
                    : ElevatedButton(
                  onPressed: () {
                    // Verify OTP function
                    if (_aadharOtpController.text == _aadharOtp) {
                      setState(() {
                        _aadharOtpVerified = true;
                      });
                    } else {
                      // Show snackbar for incorrect OTP
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Incorrect OTP')),
                      );
                    }
                  },
                  child: Text('Verify'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Enter your PAN number',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _panNumberController,
              decoration: InputDecoration(
                hintText: 'xxxxxxxx',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              maxLength: 8,
            ),
            SizedBox(height: 10),
            Text(
              'We will send you an OTP to verify your PAN number.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Dummy function to simulate sending OTP
                    setState(() {
                      _panOtpSent = true;
                      _panOtp = '654321'; // Dummy OTP
                    });
                  },
                  child: Text(_panOtpSent ? 'Resend OTP' : 'Send OTP'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _panOtpController,
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 10),
                _panOtpVerified
                    ? Icon(Icons.check_circle, color: Colors.green) // Green tick if OTP is verified
                    : ElevatedButton(
                  onPressed: () {
                    // Verify OTP function
                    if (_panOtpController.text == _panOtp) {
                      setState(() {
                        _panOtpVerified = true;
                      });
                    } else {
                      // Show snackbar for incorrect OTP
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Incorrect OTP')),
                      );
                    }
                  },
                  child: Text('Verify'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Capture Selfie',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Dummy function to capture selfie
              },
              child: Text('Capture'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the profile building screen
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileBuildingScreen()));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
