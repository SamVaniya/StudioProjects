import 'package:flutter/material.dart';
import 'package:gramdhan/ProfileBuildingScreen.dart'; // Import your ProfileBuildingScreen file

class BankDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Your Preferred Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            BankAccountTile(
              bankName: 'HDFC Bank',
              accountNumber: '1234567890',
              ifscCode: 'HDFC0000123',
              mobileNumber: '+91 9876543210',
              onPressed: () {
                // Action when HDFC Bank tile is selected
              },
            ),
            SizedBox(height: 10),
            BankAccountTile(
              bankName: 'ICICI Bank',
              accountNumber: '0987654321',
              ifscCode: 'ICIC0000456',
              mobileNumber: '+91 8765432109',
              onPressed: () {
                // Action when ICICI Bank tile is selected
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to ProfileBuildingScreen on submit
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

class BankAccountTile extends StatelessWidget {
  final String bankName;
  final String accountNumber;
  final String ifscCode;
  final String mobileNumber;
  final VoidCallback onPressed;

  const BankAccountTile({
    required this.bankName,
    required this.accountNumber,
    required this.ifscCode,
    required this.mobileNumber,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue), // Blue border
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              bankName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Account No: $accountNumber\nIFSC Code: $ifscCode\nMobile No: $mobileNumber',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
