import 'package:flutter/material.dart';
import 'package:gramdhan/ProfileBuildingScreen.dart'; // Import your ProfileBuildingScreen file

class FarmDetailsScreen extends StatefulWidget {
  @override
  _FarmDetailsScreenState createState() => _FarmDetailsScreenState();
}

class _FarmDetailsScreenState extends State<FarmDetailsScreen> {
  String _ownFarm = '';
  String _irrigation = '';
  String _farmingTechnique = '';
  String _farmingTool = '';
  String _cropName1YearAgo = '';
  double _fieldSize1YearAgo = 0.0;
  int _duration1YearAgo = 0;
  double _yield1YearAgo = 0.0;
  double _investment1YearAgo = 0.0;
  double _profit1YearAgo = 0.0;
  String _cropName2YearsAgo = '';
  double _fieldSize2YearsAgo = 0.0;
  int _duration2YearsAgo = 0;
  double _yield2YearsAgo = 0.0;
  double _investment2YearsAgo = 0.0;
  double _profit2YearsAgo = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Farm Details'),
        ),
        body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Text(
    'Do you have your own farm?',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    Row(
    children: [
    Expanded(
    child: ElevatedButton(
    onPressed: () {
    setState(() {
    _ownFarm = 'Yes';
    });
    },
    child: Text('Yes'),
    ),
    ),
    SizedBox(width: 10),
    Expanded(
    child: ElevatedButton(
    onPressed: () {
    setState(() {
    _ownFarm = 'No';
    });
    },
    child: Text('No'),
    ),
    ),
    ],
    ),
    SizedBox(height: 20),
    _ownFarm == 'Yes'
    ? Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Text(
    'Upload Proof of Ownership',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    Container(
    height: 100,
    color: Colors.grey[200],
    alignment: Alignment.center,
    child: Text('Upload Placeholder'),
    ),
    SizedBox(height: 20),
    Text(
    'Pin Code of Your Farm',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    TextFormField(
    decoration: InputDecoration(
    hintText: 'Enter Pin Code',
    ),
    ),
    SizedBox(height: 20),
    Text(
    'Farm Size',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    TextFormField(
    decoration: InputDecoration(
    hintText: 'Enter Farm Size',
    ),
    keyboardType: TextInputType.number,
    ),
    SizedBox(height: 20),
    Text(
    'Do you have irrigation?',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    Row(
    children: [
    Expanded(
    child: ElevatedButton(
    onPressed: () {
    setState(() {
    _irrigation = 'Yes';
    });
    },
    child: Text('Yes'),
    ),
    ),
    SizedBox(width: 10),
    Expanded(
    child: ElevatedButton(
    onPressed: () {
    setState(() {
    _irrigation = 'No';
    });
    },
    child: Text('No'),
    ),
    ),
    ],
    ),
    SizedBox(height: 20),
    Text(
    'Select Farming Technique',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    // Add DropdownButtonFormField for farming technique
    Text(
    'Select Farming Tool',
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    SizedBox(height: 10),
    // Add DropdownButtonFormField for farming tool
    SizedBox(height: 20),
    Text(
    'Farming Data for 1 Year Ago',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    _buildFarmingDataField(
    year: '1 Year Ago',
    cropName: _cropName1YearAgo,
    fieldSize: _fieldSize1YearAgo,
    duration: _duration1YearAgo,
    yield: _yield1YearAgo,
    investment: _investment1YearAgo,
      profit: _profit1YearAgo,
      onCropNameChanged: (value) {
        setState(() {
          _cropName1YearAgo = value;
        });
      },
      onFieldSizeChanged: (value) {
        setState(() {
          _fieldSize1YearAgo = double.parse(value);
        });
      },
      onDurationChanged: (value) {
        setState(() {
          _duration1YearAgo = int.parse(value);
        });
      },
      onYieldChanged: (value) {
        setState(() {
          _yield1YearAgo = double.parse(value);
        });
      },
      onInvestmentChanged: (value) {
        setState(() {
          _investment1YearAgo = double.parse(value);
        });
      },
      onProfitChanged: (value) {
        setState(() {
          _profit1YearAgo = double.parse(value);
        });
      },
    ),
      SizedBox(height: 20),
      Text(
        'Farming Data for 2 Years Ago',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      _buildFarmingDataField(
        year: '2 Years Ago',
        cropName: _cropName2YearsAgo,
        fieldSize: _fieldSize2YearsAgo,
        duration: _duration2YearsAgo,
        yield: _yield2YearsAgo,
        investment: _investment2YearsAgo,
        profit: _profit2YearsAgo,
        onCropNameChanged: (value) {
          setState(() {
            _cropName2YearsAgo = value;
          });
        },
        onFieldSizeChanged: (value) {
          setState(() {
            _fieldSize2YearsAgo = double.parse(value);
          });
        },
        onDurationChanged: (value) {
          setState(() {
            _duration2YearsAgo = int.parse(value);
          });
        },
        onYieldChanged: (value) {
          setState(() {
            _yield2YearsAgo = double.parse(value);
          });
        },
        onInvestmentChanged: (value) {
          setState(() {
            _investment2YearsAgo = double.parse(value);
          });
        },
        onProfitChanged: (value) {
          setState(() {
            _profit2YearsAgo = double.parse(value);
          });
        },
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
// Navigate to ProfileBuildingScreen on submit
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileBuildingScreen(),
            ),
          );
        },
        child: Text('Submit'),
      ),
    ],
    )
        : SizedBox(),
    ],
    ),
        ),
    );
  }

  Widget _buildFarmingDataField({
    required String year,
    required String cropName,
    required double fieldSize,
    required int duration,
    required double yield,
    required double investment,
    required double profit,
    required ValueChanged<String> onCropNameChanged,
    required ValueChanged<String> onFieldSizeChanged,
    required ValueChanged<String> onDurationChanged,
    required ValueChanged<String> onYieldChanged,
    required ValueChanged<String> onInvestmentChanged,
    required ValueChanged<String> onProfitChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Farming Data for $year',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Crop Name'),
          initialValue: cropName,
          onChanged: onCropNameChanged,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Field Size'),
          keyboardType: TextInputType.number,
          initialValue: fieldSize.toString(),
          onChanged: onFieldSizeChanged,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Duration'),
          keyboardType: TextInputType.number,
          initialValue: duration.toString(),
          onChanged: onDurationChanged,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Yield'),
          keyboardType: TextInputType.number,
          initialValue: yield.toString(),
          onChanged: onYieldChanged,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Investment'),
          keyboardType: TextInputType.number,
          initialValue: investment.toString(),
          onChanged: onInvestmentChanged,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Profit'),
          keyboardType: TextInputType.number,
          initialValue: profit.toString(),
          onChanged: onProfitChanged,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
