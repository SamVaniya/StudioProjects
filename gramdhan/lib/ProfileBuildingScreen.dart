import 'package:flutter/material.dart';
import 'package:gramdhan/AssetDetailsScreen.dart';
import 'package:gramdhan/BankDetailsScreen.dart';
import 'package:gramdhan/FamilyDetailsScreen.dart';
import 'package:gramdhan/FarmDetailsScreen.dart';
import 'package:gramdhan/HomeScreen.dart';
import 'package:gramdhan/KYCVerificationScreen.dart';
import 'package:gramdhan/MyApp.dart';

class ProfileBuildingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create Your Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ProfileStageTile(
              stageNumber: 1,
              stageTitle: 'KYC Verification',
              completed: false,
              onTap: () {
                // Navigate to the KYC verification screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => KYCVerificationScreen()));
              },
            ),
            SizedBox(height: 10),
            ProfileStageTile(
              stageNumber: 2,
              stageTitle: 'Bank Details',
              completed: false,
              onTap: () {
                // Navigate to the Bank details screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => BankDetailsScreen()));
              },
            ),
            SizedBox(height: 10),
            ProfileStageTile(
              stageNumber: 3,
              stageTitle: 'Family Details',
              completed: false,
              onTap: () {
                // Navigate to the Family details screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDetailsScreen()));
              },
            ),
            SizedBox(height: 10),
            ProfileStageTile(
              stageNumber: 4,
              stageTitle: 'Assets Details',
              completed: false,
              onTap: () {
                // Navigate to the Assets details screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => AssetDetailsScreen()));
              },
            ),
            SizedBox(height: 10),
            ProfileStageTile(
              stageNumber: 5,
              stageTitle: 'Farm Details',
              completed: false,
              onTap: () {
                // Navigate to the Farm details screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => FarmDetailsScreen()));
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed
                  : () {
                // Navigate to ProfileBuildingScreen on submit
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileStageTile extends StatelessWidget {
  final int stageNumber;
  final String stageTitle;
  final bool completed;
  final VoidCallback onTap;

  const ProfileStageTile({
    required this.stageNumber,
    required this.stageTitle,
    required this.completed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green), // Green border
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Stage $stageNumber',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              stageTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            completed
                ? Icon(Icons.check_circle, color: Colors.green) // Check mark if completed
                : Icon(Icons.radio_button_unchecked, color: Colors.green), // Unchecked circle if not completed
          ],
        ),
      ),
    );
  }
}

// Define screens for each stage here
// class KYCVerificationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('KYC Verification'),
//       ),
//       body: Center(
//         child: Text('KYC Verification Screen'),
//       ),
//     );
//   }
// }

// class BankDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bank Details'),
//       ),
//       body: Center(
//         child: Text('Bank Details Screen'),
//       ),
//     );
//   }
// }

// class FamilyDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Family Details'),
//       ),
//       body: Center(
//         child: Text('Family Details Screen'),
//       ),
//     );
//   }
// }

// class AssetsDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Assets Details'),
//       ),
//       body: Center(
//         child: Text('Assets Details Screen'),
//       ),
//     );
//   }
// }

// class FarmDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Farm Details'),
//       ),
//       body: Center(
//         child: Text('Farm Details Screen'),
//       ),
//     );
//   }
// }
