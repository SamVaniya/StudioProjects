import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting
import 'package:gramdhan/ProfileBuildingScreen.dart'; // Import your ProfileBuildingScreen file

class FamilyDetailsScreen extends StatefulWidget {
  @override
  _FamilyDetailsScreenState createState() => _FamilyDetailsScreenState();
}

class _FamilyDetailsScreenState extends State<FamilyDetailsScreen> {
  String _employmentStatus = '';
  String _maritalStatusDropdown = '';
  String _educationLevelDropdown = '';
  String _caste = '';

  String _selectedDOB = '';

  List<FamilyMember> _familyMembers = [];

  final _memberNameController = TextEditingController();

  final _dateFormat = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Family Details'),
        ),
        body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Text(
    'Please select your details',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    DropdownButtonFormField<String>(
    value: _employmentStatus,
    onChanged: (value) {
    setState(() {
    _employmentStatus = value!;
    });
    },
    items: ['Employed', 'Unemployed', 'Self-employed']
        .map((status) => DropdownMenuItem(
    value: status,
    child: Text(status),
    ))
        .toList(),
    decoration: InputDecoration(labelText: 'Employment Status'),
    ),
    SizedBox(height: 10),
    DropdownButtonFormField<String>(
    value: _maritalStatusDropdown,
    onChanged: (value) {
    setState(() {
    _maritalStatusDropdown = value!;
    });
    },
    items: ['Single', 'Married', 'Divorced']
        .map((status) => DropdownMenuItem(
    value: status,
    child: Text(status),
    ))
        .toList(),
    decoration: InputDecoration(labelText: 'Marital Status'),
    ),
    SizedBox(height: 10),
    DropdownButtonFormField<String>(
    value: _educationLevelDropdown,
    onChanged: (value) {
    setState(() {
    _educationLevelDropdown = value!;
    });
    },
    items: ['High School', 'College', 'Graduate', 'Postgraduate']
        .map((level) => DropdownMenuItem(
    value: level,
    child: Text(level),
    ))
        .toList(),
    decoration: InputDecoration(labelText: 'Education Level'),
    ),
    SizedBox(height: 10),
    DropdownButtonFormField<String>(
    value: _caste,
    onChanged: (value) {
    setState(() {
    _caste = value!;
    });
    },
    items: ['General', 'OBC', 'SC', 'ST']
        .map((caste) => DropdownMenuItem(
    value: caste,
    child: Text(caste),
    ))
        .toList(),
    decoration: InputDecoration(labelText: 'Caste'),
    ),
    SizedBox(height: 20),
    Text(
    'Your Family Details',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    TextField(
    controller: _memberNameController,
    decoration: InputDecoration(labelText: 'Enter Member Name'),
    ),
    SizedBox(height: 10),
    TextButton(
    onPressed: () async {
    final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
    setState(() {
    _selectedDOB = _dateFormat.format(pickedDate);
    });
    }
    },
    child: Text(_selectedDOB.isEmpty ? 'Select DOB' : 'DOB: $_selectedDOB'),
    ),
    SizedBox(height: 20),
    ElevatedButton(
    onPressed: () {
    setState(() {
    _familyMembers.add(FamilyMember(
    name: _memberNameController.text,
    dob: _selectedDOB,
    maritalStatus: _maritalStatusDropdown, // Use separate variables
    educationLevel: _educationLevelDropdown, // Use separate variables
    ));
    _memberNameController.clear();
    _selectedDOB = '';
    });
    },
    child: Text('Add Member'),
    ),
    SizedBox(height: 20),
    Text(
    'Family Members',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    DataTable(
    columns: [
    DataColumn(label: Text('Name')),
    DataColumn(label: Text('DOB')),
    DataColumn(label: Text('Marital Status')),
    DataColumn(label: Text('Education Level')),
    ],
    rows: _familyMembers
        .map(
    (member) => DataRow(
    cells: [
    DataCell(Text(member.name)),
    DataCell(Text(member.dob)),
    DataCell(Text(member.maritalStatus)),
    DataCell(Text(member.educationLevel)),
    ],
    ),
    )
        .toList(),
    ),
    SizedBox(height: 20),
    ElevatedButton(
    onPressed
        : () {
      // Navigate to ProfileBuildingScreen on submit
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfileBuildingScreen()),
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

class FamilyMember {
  final String name;
  final String dob;
  final String maritalStatus;
  final String educationLevel;

  FamilyMember({
    required this.name,
    required this.dob,
    required this.maritalStatus,
    required this.educationLevel,
  });
}
