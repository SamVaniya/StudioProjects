import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:withyou/Data.dart';
import 'package:withyou/sharedData.dart';
import 'package:withyou/third.dart';

import 'SecondPage.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerApp(),
  ));
}


// final practice work

// 1. drawer
class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  bool check = false;
  double sldr = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.green,child: Text("S"),),
              accountName: Text("samir vaniya"),
                accountEmail: Text("Samir@gmail.com"),),
            ListTile(
              onTap: () {

              },
              title: Text("profile"),
            ),
            Card(
              child: ListTile(
                onTap: () {

                },
                title: Text("Healthbars"),
              ),
            ),ListTile(
              onTap: () {

              },
              title: Text("Upgrade to Premium"),
            ),
            ListTile(
              onTap: () {

              },
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text(SharedData.name),),
      body: Container(
        child: Column(
          children: [
            TextField(controller: name,decoration: InputDecoration(hintText: "Enter name"),),
            TextField(controller: email,decoration: InputDecoration(hintText: "Enter email"),),
            Slider(min:0,max:100,value: sldr, onChanged: (value) {
              sldr = value;
              setState(() {

              });
            },),
            Text(sldr.toString()),
            Checkbox(value: check, onChanged: (value) {
              check = value!;setState(() {

              });
            },),
            ElevatedButton(onPressed: () {
              Data data = Data();
              data.name = name.text;
              data.email = email.text;
              data.married = check;
              data.salary = sldr;
              SharedData.datalist.add(data);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SCpage();
              },));
            }, child: Text("Submit")),

          ],
        ),
      ),
    );
  }
}



// captone
// Registration page
class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController hobbiesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WithYou Register'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 32.0),
            Text(
              'Register Yourself',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: contactNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: dobController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: 'Date of Birth (DD/MM/YYYY)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: hobbiesController,
              decoration: InputDecoration(
                labelText: 'Hobbies',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Add registration logic
                print('Name: ${nameController.text}');
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
                print('Contact Number: ${contactNumberController.text}');
                print('Date of Birth: ${dobController.text}');
                print('Hobbies: ${hobbiesController.text}');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyApp();
        },));
      },),
    );
  }
}


// Home page


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WithYou Mental Health App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WithYou'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quote of the Day:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Your mental health is a priority. Your happiness is an essential. Your self-care is a necessity.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              'Music Files:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Play relaxing music
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(width: 10),
                  Text(
                    'Relaxing Music for Stress Relief',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play calming sounds of nature
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(width: 10),
                  Text(
                    'Calming Sounds of Nature',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play uplifting and motivational songs
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(width: 10),
                  Text(
                    'Uplifting and Motivational Songs',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play meditation music for inner peace
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(width: 10),
                  Text(
                    'Meditation Music for Inner Peace',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play mood-boosting music for a positive mindset
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(width: 10),
                  Text(
                    'Mood-boosting Music for a Positive Mindset',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Video Suggestions:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Play guided meditations for anxiety and depression
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.video_library),
                  SizedBox(width: 10),
                  Text(
                    'Guided Meditations for Anxiety and Depression',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play yoga for mental health
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.video_library),
                  SizedBox(width: 10),
                  Text(
                    'Yoga for Mental Health',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play TED Talks on mental health and well-being
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.video_library),
                  SizedBox(width: 10),
                  Text(
                    'TED Talks on Mental Health and Well-being',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Play guided breathing exercises for relaxation and focus
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.video_library),
                  SizedBox(width: 10),
                  Text(
                    'Guided Breathing Exercises for Relaxation and Focus',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }}








// Carry data from one page to another page
class MyDemoApp6 extends StatefulWidget {
  MyDemoApp6({Key? key}) : super(key: key);

  @override
  State<MyDemoApp6> createState() => _MyDemoApp6State();
}

class _MyDemoApp6State extends State<MyDemoApp6> {

  TextEditingController num = new TextEditingController();
  List<int> numbers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WithYou Home Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: num,decoration: InputDecoration(hintText: 'Enter Number here to add number in '),),
          ElevatedButton(onPressed: () {
            int number = int.parse(num.text);
            numbers.add(number);
            print(numbers);
          }, child: Text('Add'))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ShowNumbersPage(numbers);
        },));
      },),
    );
  }
}

class ShowNumbersPage extends StatefulWidget {
  List<int> numbers = [];
  ShowNumbersPage(this.numbers);

  @override
  State<ShowNumbersPage> createState() => _ShowNumbersPageState();
}

class _ShowNumbersPageState extends State<ShowNumbersPage> {
  int num = 0;
  int ctr = 0;
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Number Access Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Text(num.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                print(widget.numbers);
                num = widget.numbers[0];
                ctr = 0;
                setState(() {

                });
              }, child: Text('First')),
              ElevatedButton(onPressed: () {
                print(widget.numbers.length);
                if(ctr<widget.numbers.length-1){
                  ctr = ctr + 1;
                  print(ctr);
                  num = widget.numbers[ctr];
                  error = '';
                }else{
                  error = 'This is the last element';
                }
                setState(() {

                });

              }, child: Text('Next')),
              ElevatedButton(onPressed: () {
                if(ctr>0){
                  print(widget.numbers);
                  ctr = ctr - 1;
                  num = widget.numbers[ctr];
                  error = '';
              }else{
                  error = 'this is the first element';
              }
                setState(() {

                });
              }, child: Text('Previous')),
              ElevatedButton(onPressed: () {
                  num = widget.numbers.last;
                  ctr = widget.numbers.length - 1;
                  setState(() {

                  });
              }, child: Text('Last')),
            ],
          ),
          Text(error),
        ],
      ),
    );
  }
}






// WithYou navigation practice
class MyDemoApp5 extends StatefulWidget {
  MyDemoApp5({Key? key}) : super(key: key);

  @override
  State<MyDemoApp5> createState() => _MyDemoApp5State();
}

class _MyDemoApp5State extends State<MyDemoApp5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WithYou home page'),
      ),
      body: Text('This is body part'),
      floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          },));
      },child: Icon(Icons.navigate_next_rounded),),
    );
  }
}


// Second page for navigation pactice
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Second Pagee"),),
      body: Text('This is second page!'),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ThirdPage('second page data',100);
        },));
      },child: Icon(Icons.navigate_next_rounded),),
    );
  }
}



// withyou color changer with slider RGB color combinaton with opacity
class MyDemoApp4 extends StatefulWidget {
  MyDemoApp4({Key? key}) : super(key: key);

  @override
  State<MyDemoApp4> createState() => _MyDemoApp4State();
}

// change color with checkboxes
class _MyDemoApp4State extends State<MyDemoApp4> {
  bool isRed = false;
  bool isGreen = false;
  bool isBlue = false;
  double redvalue = 0;
  double greenvalue = 0;
  double bluevalue = 0;
  double opac = 0;
  Color clr = Colors.white;
  String error = '';
  // int redint = redvalue.toInt();

  Color rgbclr = Color.fromRGBO(0,0, 0, 65);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rgbclr,
      appBar: AppBar(
        title: Text("WithYou Color Changer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Checkbox(value: isRed, onChanged: (value) {
                if(isGreen==false && isBlue==false){
                  isRed = value!;
                if(isRed==true){
                  clr = Colors.red;
                  error = '';
                }else{
                  clr = Colors.white;
                }}else{
                  error = 'You cant select multiple checkboxes at the same time.. Please select any one.....';
                }
                print(isRed);
                setState(() {

                });
              },),
              Text('Red')
            ],
          ),
          Row(
            children: [
              Checkbox(value: isGreen, onChanged: (value) {
                if(isRed==false && isBlue==false){
                  isGreen = value!;
                if(isGreen==true){
                  clr = Colors.green;
                  error = '';
                }else{
                  clr = Colors.white;
                }}else{
                  error = 'You cant select multiple checkboxes at the same time.. Please select any one.....';
                }
                print(isGreen);
                setState(() {

                });
              },),
              Text("Green")
            ],
          ),
          Row(
            children: [
              Checkbox(value: isBlue, onChanged: (value) {
                if(isRed==false && isGreen==false){
                  isBlue = value!;
                if(isBlue==true){
                  clr = Colors.blue;
                  error = '';
                }else{
                  clr = Colors.white;
                }}else{
                  error = 'You cant select multiple checkboxes at the same time.. Please select any one.....';
                }
                print(isBlue);
                setState(() {

                });
              },),
              Text("Blue")
            ],
          ),
          Text(error),
          Row(
            children: [
              Slider(activeColor:Colors.red, min: 0,max: 255,value: redvalue, onChanged: (value) {
                redvalue = value;
                rgbclr = Color.fromRGBO(redvalue.toInt(), greenvalue.toInt(), bluevalue.toInt(), 1);
                print(redvalue);
                setState(() {

                });
              },),
              Text("RED")
            ],
          ),
          Row(
            children: [
              Slider(activeColor:Colors.green, min: 0,max: 255,value: greenvalue, onChanged: (value) {
                greenvalue = value;
                rgbclr = Color.fromRGBO(redvalue.toInt(), greenvalue.toInt(), bluevalue.toInt(), 1);
                print(greenvalue);
                setState(() {

                });
              },),
              Text("GREEN")
            ],
          ),
          Row(
            children: [
              Slider(activeColor:Colors.blue, min: 0,max: 255,value: bluevalue, onChanged: (value) {
                bluevalue = value;
                rgbclr = Color.fromRGBO(redvalue.toInt(), greenvalue.toInt(), bluevalue.toInt(), 1);
                print(bluevalue);
                setState(() {

                });
              },),
              Text("BLUE")
            ],
          ),
          Row(
            children: [
              Slider(min: 0,max: 1,value: opac, onChanged: (value) {
                opac = value;
                rgbclr = Color.fromRGBO(redvalue.toInt(), greenvalue.toInt(), bluevalue.toInt(), opac);
                print(opac);
                setState(() {

                });
              },),
              Text("Opacity")
            ],
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyDemoApp3();
        },));
      },child: Icon(Icons.next_plan_outlined),),
    );
  }
}



// game prject remaimning
class MyDemoApp3 extends StatefulWidget {
  MyDemoApp3({Key? key}) : super(key: key);

  @override
  State<MyDemoApp3> createState() => _MyDemoApp3State();
}

class _MyDemoApp3State extends State<MyDemoApp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WithYou game'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Hello EveryOne'),
            ],
          ),
        ),
      ),
    );
  }
}



// change background color with buttons
class MyDemoApp2 extends StatefulWidget {
  MyDemoApp2({Key? key}) : super(key: key);

  @override
  State<MyDemoApp2> createState() => _MyDemoApp2State();
}

class _MyDemoApp2State extends State<MyDemoApp2> {
  Color _backgroundColor = Colors.white;
  Color rang = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text("With you color changer"),
      ),
      body: Container(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
              rang = Colors.black;
              setState(() {
                setState(() {
                  _backgroundColor = rang;
                });
              });
            }, child: Text("Black")),
            ElevatedButton(onPressed: () {
              rang = Colors.green;
              setState(() {
                setState(() {
                  _backgroundColor = rang;
                });
              });
            }, child: Text("Green")),
            ElevatedButton(onPressed: () {
              rang = Colors.red;
              setState(() {
                setState(() {
                  _backgroundColor = rang;
                });
              });
            }, child: Text("Red")),
            ElevatedButton(onPressed: () {
              rang = Colors.blue;
              setState(() {
                setState(() {
                  _backgroundColor = rang;
                });
              });
            }, child: Text("Blue"))
          ],
        ),
      ),
    );
  }
}



// # Demo for Stateful app - Simple Calculator
class MyDemoApp extends StatefulWidget {
  MyDemoApp({Key? key}) : super(key: key);

  @override
  State<MyDemoApp> createState() => _MyDemoAppState();
}

class _MyDemoAppState extends State<MyDemoApp> {

  String str = "";
  String answer = "";
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WithYou'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: num1,decoration: InputDecoration(hintText:"Enter First number here"),),
          TextField(controller: num2,decoration: InputDecoration(hintText:"Enter Second number here"),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                if (num1.text=='' || num2.text==''){
                  str = "Please Enter Both values";
                  setState(() {

                  });
                }else{int sum = int.parse(num1.text)+int.parse(num2.text);
                answer = sum.toString();
                str = "";
                setState(() {

                });}

              }, child: Text('Addition')),
              ElevatedButton(onPressed: () {
                if (num1.text=='' || num2.text==''){
                  str = "Please Enter Both values";
                  setState(() {

                  });
                }else{int sum = int.parse(num1.text)-int.parse(num2.text);
                answer = sum.toString();
                str = "";
                setState(() {

                });}

              }, child: Text("Subtract")),
              ElevatedButton(onPressed: () {
                if (num1.text=='' || num2.text==''){
                  str = "Please Enter Both values";
                  setState(() {

                  });
                }else{int sum = int.parse(num1.text)*int.parse(num2.text);
                answer = sum.toString();
                str = "";
                setState(() {

                });}

              }, child: Text("Multiply")),
              ElevatedButton(onPressed: () {
                if (num1.text=='' || num2.text==''){
                  str = "Please Enter Both values";
                  setState(() {

                  });
                }else{double sum = double.parse(num1.text)/double.parse(num2.text);
                answer = sum.toString();
                str = "";
                setState(() {

                });}

              }, child: Text("Division"))

            ],
          ),
          Text(answer,style: TextStyle(fontSize: 50)),
          Text(str,style: TextStyle(fontSize: 40),)



        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.accessibility),onPressed: () {
          str="Hello EveryOne";
          setState(() {

          });
      },),
    );
  }
}




//Basic window
class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);

  TextEditingController txtUser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
      body: Image(image: AssetImage("assets/linkedincover2.png"),),
      //TextField(controller:txtUser,decoration: InputDecoration(icon: Icon(Icons.account_circle_rounded), labelText: "Enter your good name please!")),
      floatingActionButton: FloatingActionButton(
        child: Text("Yo!."),
        onPressed: (){
          print("hello world!...");
          print("User is " + txtUser.text);
        },
      ),
    );
  }
}


// multiple widgets practice

class Mwapp1 extends StatelessWidget {
  const Mwapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WithYou!."),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Container(
            color: Colors.tealAccent,
            padding: EdgeInsets.all(20),
            child: Text("Feel the Nature!...")
          ),
          Container(
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(30),
            child: TextButton(child: Text("Heal Me!.."),onPressed: (){
              print("Why not!!..");
            },),
          ),
          Container(
            color: Colors.yellowAccent,
            padding: EdgeInsets.all(40),
            child: TextButton(child: Text("Solve"),onPressed: (){
              print("Here is the solution!!..");
            },),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(50),
            child: TextButton(child: Text("Make me laugh"),onPressed: (){
              print("Here is the laugh!!..");
            },),
          ),
        ],
      ),
      //Text("Wel come to Mental Peace!!"),
      floatingActionButton: FloatingActionButton(child: Text("Chat"),onPressed: (){
        print("I am your friend! what do you want to share buddy!...");
      },),
    );
  }
}


// practice task
class Mwpapp extends StatelessWidget {
  Mwpapp({Key? key}) : super(key: key);
  List<int> lstmarks = [];
  TextEditingController txtVar = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WithYou!."),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Container(
            color: Colors.deepPurpleAccent,
            child: Text("Enter a Integer here!.."),
          ),
          Container(
              child: TextField(decoration: InputDecoration(),)
          ),
          Container(
            color: Colors.deepPurpleAccent,
            child: TextButton(child: Text("Add"),onPressed: (){
              print("Old marks");
              print(lstmarks);
              // String var2 = txtVar.text;
              // int var1 = int.parse(var2);
              lstmarks.add(65);
              // print(txtVar.text + " is added!");
              print(lstmarks);


            },),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            child: TextButton(child: Text("Min"),onPressed: (){
              print("Why not!!..");
            },),
          ),
          Container(
            color: Colors.yellowAccent,
            child: TextButton(child: Text("Max"),onPressed: (){
              print("Here is the solution!!..");
            },),
          ),
          Container(
            color: Colors.amber,
            child: TextButton(child: Text("Sort"),onPressed: (){
              print("Here is the laugh!!..");
            },),
          ),
        ],
      ),
      //Text("Wel come to Mental Peace!!"),
      floatingActionButton: FloatingActionButton(child: Text("Search"),onPressed: (){
        print("I am your friend! what do you want to share buddy!...");
      },),
    );
  }
}
