import 'package:flutter/material.dart';
import 'package:gramdhan/MobileNumberScreen.dart';
import 'package:gramdhan/MyApp.dart';
import 'package:gramdhan/WelCome.dart';

class PermissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Permissions Required',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'To enhance your experience, we need your permission to access the following:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            PermissionTile(
              icon: Icons.location_on,
              title: 'Location',
              description: 'Allow access to your location for accurate services.',
            ),
            PermissionTile(
              icon: Icons.devices,
              title: 'Device',
              description: 'Allow access to device information for optimal performance.',
            ),
            PermissionTile(
              icon: Icons.sms,
              title: 'SMS',
              description: 'Allow access to SMS for seamless communication.',
            ),
            PermissionTile(
              icon: Icons.contacts,
              title: 'Contacts',
              description: 'Allow access to contacts for social integration.',
            ),
            PermissionTile(
              icon: Icons.camera,
              title: 'Camera',
              description: 'Allow access to camera for capturing moments.',
            ),
            SizedBox(height: 20),
        Row(
          children: [
            Checkbox(
              value: true, // You can manage the checkbox state here
              onChanged: (value) {
                // Handle checkbox changes if needed
              },
            ),
            Expanded(
              child: Text(
                'I understand and agree to the terms of service.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen when permission is allowed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MobileNumberScreen()),
                );
              },
              child: Text('Allow Permissions'),
            ),
          ],
        ),
      ),
    );
  }
}

class PermissionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PermissionTile({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
