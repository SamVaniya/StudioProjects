import 'package:flutter/material.dart';

class LoanListScreen extends StatefulWidget {
  @override
  _LoanListScreenState createState() => _LoanListScreenState();
}

class _LoanListScreenState extends State<LoanListScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    LoanListPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loans'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class LoanListPage extends StatelessWidget {
  final List<Loan> loans = [
    Loan(
      name: 'Personal Loan',
      duration: '1-5 years',
      interestRate: '10%-15%',
      description: 'Get quick funds for personal expenses.',
    ),
    Loan(
      name: 'Home Loan',
      duration: '15-30 years',
      interestRate: '8%-12%',
      description: 'Fulfill your dream of owning a home.',
    ),
    Loan(
      name: 'Car Loan',
      duration: '3-7 years',
      interestRate: '7%-10%',
      description: 'Purchase your dream car with ease.',
    ),
    // Add more loans as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: loans.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(loans[index].name),
          subtitle: Text(
              'Duration: ${loans[index].duration}\nInterest Rate: ${loans[index].interestRate}\n${loans[index].description}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoanDetailsScreen(loan: loans[index]),
              ),
            );
          },
        );
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page'),
    );
  }
}

class LoanDetailsScreen extends StatelessWidget {
  final Loan loan;

  LoanDetailsScreen({required this.loan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loan.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Loan Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Duration: ${loan.duration}'),
            Text('Interest Rate: ${loan.interestRate}'),
            SizedBox(height: 20),
            Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida mollis nisl, eget iaculis nulla vehicula vitae.'),
            // Add more details about loan terms and conditions
            SizedBox(height: 20),
            Text(
              'Policies',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida mollis nisl, eget iaculis nulla vehicula vitae.'),
            // Add more details about loan policies
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to handle applying for the loan
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class Loan {
  final String name;
  final String duration;
  final String interestRate;
  final String description;

  Loan({
    required this.name,
    required this.duration,
    required this.interestRate,
    required this.description,
  });
}

