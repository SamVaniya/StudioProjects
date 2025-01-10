import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gramdhan'),
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Handle notification icon press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle profile icon press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WeatherReport(),
            SizedBox(height: 20),
            Text(
              'Trending Loans',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TrendingLoans(),
            SizedBox(height: 20),
            Text(
              'Trending Schemes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TrendingSchemes(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Current index of selected item
        onTap: (int index) {
          // Handle navigation item tap
          // You can navigate to different screens based on index
          // For example, index 0 corresponds to Home, index 1 to Loans, index 2 to Schemes, and so on
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Loans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Schemes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class WeatherReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Weather Report',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Add weather report details here
            Text('Temperature: 25°C'),
            Text('Condition: Sunny'),
          ],
        ),
      ),
    );
  }
}

class TrendingLoans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Trending loans widgets
          LoanItem(name: 'Personal Loan', image: 'personal_loan.jpg'),
          LoanItem(name: 'Home Loan', image: 'home_loan.jpg'),
          LoanItem(name: 'Car Loan', image: 'car_loan.jpg'),
          // Add more loan items as needed
        ],
      ),
    );
  }
}

class LoanItem extends StatelessWidget {
  final String name;
  final String image;

  LoanItem({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$image',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrendingSchemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Trending schemes widgets
          SchemeItem(name: 'Farmers Scheme', image: 'farmers_scheme.jpg'),
          SchemeItem(name: 'Education Scheme', image: 'education_scheme.jpg'),
          SchemeItem(name: 'Healthcare Scheme', image: 'healthcare_scheme.jpg'),
          // Add more scheme items as needed
        ],
      ),
    );
  }
}

class SchemeItem extends StatelessWidget {
  final String name;
  final String image;

  SchemeItem({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.asset(
        'assets/images/$image',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Padding(
        padding: EdgeInsets.all(8),
    child: Text(
    name
      ,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
        ),
          ],
        ),
    );
  }
}
