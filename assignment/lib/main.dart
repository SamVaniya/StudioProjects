import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SignUpPage(),));
}


// Signup page to sign up for new users
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController contact = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController conpassword = new TextEditingController();
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('SignUp Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: username,decoration: InputDecoration(hintText: "Enter username",),),
          TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email",),),
          TextField(controller: contact,decoration: InputDecoration(hintText: "Enter contact",),),
          TextField(controller: password,decoration: InputDecoration(hintText: "Enter Password",),),
          TextField(controller: conpassword,decoration: InputDecoration(hintText: "Confirm Password",),),
          ElevatedButton(onPressed: () {
            if(username.text!='' && email.text!='' && contact.text!='' && password.text!='' && conpassword.text!=''){
            if(password.text!=conpassword.text){
              error = "Password and confirm password does not match";
              setState(() {

              });
            }else{
              error = "All right , You can proceed!...";
              setState(() {

              });

            }
              }else{
              error = "PLease fill all the fields";
              setState(() {

              });
            }
            setState(() {

            });

          }, child: Text("Check Details!")),
          Text(error)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return HomePage();

        },));
      },child: Icon(Icons.login),),
    );
  }
}

// home page to navigate evary examset
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Mr. Manager"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("First 4 sets"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddBook();
                      },));
                    }, child: Text("Book Management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddMobile();
                      },));
                    }, child: Text("Mobile management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddCar();
                      },));
                    }, child: Text("Car management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddEmployee();
                      },));
                    }, child: Text("Employee management"))
                  ],
                ),
              ],
            ),
          ),
          Container(color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Second 4 sets"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddBook2();
                      },));

                    }, child: Text("Second Book Management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MyApp1();
                      },));

                    }, child: Text("Second Mobile Management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MyApp();
                      },));

                    }, child: Text("Second Car Management")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddBook2();
                      },));

                    }, child: Text("Second Employee Management")),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            },));
          }, child: Text('LogOut'))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },),
    );
  }
}


// Login page

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Login Page"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: username,decoration: InputDecoration(hintText: "Enter username"),),
          TextField(controller: password,decoration: InputDecoration(hintText: "Enter password"),),
          Checkbox(value: remember, onChanged: (value) {

            setState(() {
              remember = value!;
            });
          },),
          ElevatedButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            },));
          }, child: Text("Login"))
        ],
      ),
    );
  }
}

// First 4 exam sets

//  Exam set - 1 : add Book print prime pages : book management
class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  TextEditingController bookname = new TextEditingController();
  TextEditingController pageno = new TextEditingController();
  List<int> pages = [];
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Add Book Details'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: bookname,decoration: InputDecoration(hintText: "Enter Book name"),),
          TextField(controller: pageno,decoration: InputDecoration(hintText: "Enter page numbers"),),
          ElevatedButton(onPressed: () {
            pages.add(int.parse(pageno.text));
            print(pages);
            error = "Book added successfully...";
            setState(() {

            });
          }, child: Text("Add Book")),
          ElevatedButton(onPressed: () {
            print("These are the prime pages");

            for(int pno=0;pno<pages.length;pno++){
              int ctr = 0;
              for(int num=1;num<pages[pno]+1;num++){
                if(pages[pno]%num==0){
                  ctr = ctr + 1;
                }
              }
              if(ctr==2){
                print(pages[pno].toString() + " is prime page");
              }
            }
          }, child: Text('prime Pages')),
          Text(error)
        ],
      ),
    );
  }
}


//  Exam set - 2 : add Mobile print Armstrong prices : mobile management

class AddMobile extends StatefulWidget {
  const AddMobile({Key? key}) : super(key: key);

  @override
  State<AddMobile> createState() => _AddMobileState();
}

class _AddMobileState extends State<AddMobile> {
  TextEditingController mname = new TextEditingController();
  TextEditingController mprice = new TextEditingController();
  List<int> prices = [];
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Mobile ManageMent"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: mname,decoration: InputDecoration(hintText: "Enter Book name"),),
          TextField(controller: mprice,decoration: InputDecoration(hintText: "Enter page numbers"),),
          ElevatedButton(onPressed: () {
            prices.add(int.parse(mprice.text));
            print(prices);
            error = "Price added successfully...";
            setState(() {

            });
          }, child: Text("Add Mobile")),
          ElevatedButton(onPressed: () {
            print("These are the Armstrong prices");
            for(int price=0;price<prices.length;price++){
              String strprice = prices[price].toString();
              int sum = 0;
              for(int num=0;num<strprice.length;num++){
                int n = int.parse(strprice[num])*int.parse(strprice[num])*int.parse(strprice[num]);
                sum = sum + n;
              }
              if(prices[price]==sum){
                print(prices[price].toString()+" is a armstrong price");
              }
            }
            
          }, child: Text('Armstrong prices')),
          Text(error)
        ],
      ),
    );
  }
}


//  Exam set - 3 : add Car Details print Prime Average of car : Car Management management
class AddCar extends StatefulWidget {
  const AddCar({Key? key}) : super(key: key);

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  TextEditingController carname = new TextEditingController();
  TextEditingController average = new TextEditingController();
  List<int> averages = [];
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Add Car Details'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: carname,decoration: InputDecoration(hintText: "Enter Car name"),),
          TextField(controller: average,decoration: InputDecoration(hintText: "Enter Car Average"),),
          ElevatedButton(onPressed: () {
            averages.add(int.parse(average.text));
            print(averages);
            error = "Car added successfully...";
            setState(() {

            });
          }, child: Text("Add Car")),
          ElevatedButton(onPressed: () {
            print("These are the prime Averages of the car");

            for(int av=0;av<averages.length;av++){
              int ctr = 0;
              for(int num=1;num<averages[av]+1;num++){
                if(averages[av]%num==0){
                  ctr = ctr + 1;
                }
              }
              if(ctr==2){
                print(averages[av].toString() + " is prime average of car");
              }
            }
          }, child: Text('prime Averages')),
          Text(error)
        ],
      ),
    );
  }
}



//  Exam set - 4 : add Employee print Armstrong IDs : Employee management

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  TextEditingController eid = new TextEditingController();
  TextEditingController ename = new TextEditingController();
  List<int> Eids = [];
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Employee ManageMent"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: eid,decoration: InputDecoration(hintText: "Enter Employee ID name"),),
          TextField(controller: ename,decoration: InputDecoration(hintText: "Enter Employee name"),),
          ElevatedButton(onPressed: () {
            Eids.add(int.parse(eid.text));
            print(Eids);
            error = "Employee ID added successfully...";
            setState(() {

            });
          }, child: Text("Add Employee")),
          ElevatedButton(onPressed: () {
            print("These are the Armstrong prices");
            for(int id=0;id<Eids.length;id++){
              String strid = Eids[id].toString();
              int sum = 0;
              for(int num=0;num<strid.length;num++){
                int n = int.parse(strid[num])*int.parse(strid[num])*int.parse(strid[num]);
                sum = sum + n;
              }
              if(Eids[id]==sum){
                print(Eids[id].toString()+" is a armstrong Employee ID");
              }
            }

          }, child: Text('Armstrong IDs')),
          Text(error)
        ],
      ),
    );;
  }
}


// Second four exam set

// Set 1 book
class AddBook2 extends StatefulWidget {
  const AddBook2({Key? key}) : super(key: key);

  @override
  State<AddBook2> createState() => _AddBook2State();
}

class _AddBook2State extends State<AddBook2> {

  TextEditingController txtName = new TextEditingController();
  TextEditingController txtPrice = new TextEditingController();
  List<int> book = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Details")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: txtName,
            decoration: InputDecoration(
                icon: Icon(Icons.add), labelText: "Enter The Book Name"),
          ),
          TextField(
            controller: txtPrice,
            decoration: InputDecoration(
                icon: Icon(Icons.price_change_outlined),
                labelText: "Enter The Book Price"),
          ),
          ElevatedButton(
              onPressed: () {
                int num = int.parse(txtPrice.text);
                book.add(num);
                print(book);
                setState(() {});
              },
              child: Text("Save")),
          ElevatedButton(
              onPressed: () {
                int max = 0;
                for (int cntr = 0; cntr < book.length; cntr++) {
                  if (book[cntr] > max) {
                    max = book[cntr];
                  }
                }
                print("Maximum Price is:" + "$max");
                setState(() {});
              },
              child: Text("Max")),
          ElevatedButton(
              onPressed: () {
                int min = book[0];
                for (int cntr = 1; cntr < book.length; cntr++) {
                  if (book[cntr] < min) {
                    min = book[cntr];
                  }
                }
                print("Minium Price is:" + "$min");
                setState(() {});
              },
              child: Text("Min")),
          Text(book.toString()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Clicked Event!!!");
          setState(() {});
        },
        child: Text("Go!"),
      ),
    );
  }
}


// set 2 mobile
class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  TextEditingController txt1 = new TextEditingController();
  TextEditingController txt2 = new TextEditingController();
  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MobileApp")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: txt1,
              decoration: InputDecoration(
                  icon: (Icon(Icons.adb_rounded)),
                  labelText: "Enter the Username"),
            ),
            TextField(
              controller: txt2,
              decoration: InputDecoration(
                  icon: (Icon(Icons.password)),
                  labelText: "Enter the Password"),
            ),
            ElevatedButton(
                onPressed: () {
                  int sum = int.parse(txt1.text) + int.parse(txt2.text);
                  int tempSum = sum;
                  int armSum = 0;
                  int len = sum.toString().length;
                  while (tempSum > 0) {
                    int digit = tempSum % 10;
                    int dPower = 1;
                    for (int i = 0; i < len; i++) {
                      dPower = dPower * digit;
                    }
                    armSum = armSum + dPower;
                    tempSum = tempSum ~/ 10;
                  }
                  if (sum == armSum) {
                    str = "login successfully";
                  } else {
                    str =
                    "sum of first and second number is not Armstrong number";
                  }
                  setState(() {});
                },
                child: Icon(Icons.save))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddMobile();
          }));
        },
        child: Text("Go!"),
      ),
    );
  }
}

class AddMobile2 extends StatefulWidget {
  const AddMobile2({Key? key}) : super(key: key);

  @override
  State<AddMobile2> createState() => _AddMobile2State();
}

class _AddMobile2State extends State<AddMobile2> {
  TextEditingController txtName = new TextEditingController();
  TextEditingController txtPrice = new TextEditingController();
  List<String> Mobile = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile Details")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: txtName,
            decoration: InputDecoration(
                icon: Icon(Icons.add), labelText: "Enter The Company Name"),
          ),
          TextField(
            controller: txtPrice,
            decoration: InputDecoration(
                icon: Icon(Icons.price_change_outlined),
                labelText: "Enter The Mobile Price"),
          ),
          ElevatedButton(
              onPressed: () {
                String Com = txtName.text;
                Mobile.add(Com);
                print(Mobile);
                setState(() {});
              },
              child: Text("Save")),
          ElevatedButton(
              onPressed: () {
                for (String companies in Mobile) {
                  if (companies.startsWith('S')) {
                    print(companies);
                  }
                }

                setState(() {});
              },
              child: Text("List Start with S")),
          Text(Mobile.toString()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Clicked Event!!!");
          setState(() {});
        },
        child: Text("Go!"),
      ),
    );
    ;
  }
}


// set 3

class Mycar extends StatefulWidget {
  const Mycar({Key? key}) : super(key: key);

  @override
  State<Mycar> createState() => _MycarState();
}

class _MycarState extends State<Mycar> {


  TextEditingController Text1 = TextEditingController();
  TextEditingController Text2 = TextEditingController();

  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("MyApp"))),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 30,),
            TextField(controller: Text1,decoration: InputDecoration(labelText: "Enter the first number")),
            SizedBox(height: 20,),
            TextField(controller: Text2,decoration: InputDecoration(labelText: "Enter the second number")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              int sum = int.parse(Text1.text) + int.parse(Text2.text);
              int count = 0;
              for(int i = 1; i<=sum; i++)
              {
                if(sum % i == 0)
                {
                  count++;
                }
              }
              if(count == 2)
              {
                print("login successfully");
                str = "login successfully";
                setState(() {

                });
              }
              else{
                str = "sum of first and second number is not prime number";
                setState(() {

                });
              }
            }, child: Text("Submit")),
            SizedBox(height: 10,),
            Text(str),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddCar2();
              },));
            }, child: Text("Add Car")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add),),
    );
  }
}

class AddCar2 extends StatefulWidget {
  const AddCar2({Key? key}) : super(key: key);

  @override
  State<AddCar2> createState() => _AddCar2State();
}

class _AddCar2State extends State<AddCar2> {
  TextEditingController avg = TextEditingController();

  List carLis = [];
  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Car"),),
        body: Column(children: [
          SizedBox(height: 30,),
          Text("Add Car Details"),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(labelText: "Enter Car Name")),
          SizedBox(height: 10,),
          TextField(decoration: InputDecoration(labelText: "Enter Car Color")),
          SizedBox(height: 10,),
          TextField(controller: avg,decoration: InputDecoration(labelText: "Enter Car Average")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            carLis.add(int.parse(avg.text));
            print(avg.text);
          }, child: Text("Add")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            print(carLis);
            for(int i=0;i<carLis.length;i++){
              for(int j=0;j<carLis.length-1;j++){
                if(carLis[j]>carLis[j+1]){
                  int n=carLis[j];
                  carLis[j]=carLis[j+1];
                  carLis[j+1]=n;
                }
              }
            }
            print(carLis);

            for(int index=0; index<carLis.length; index++)
            {
              str += carLis[index].toString();
              str += ",";
            }
            setState(() {

            });
          }, child: Text("Show")),
          SizedBox(height: 10,),
          Text(str),
        ],)
    );
  }
}

// set 4
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController Text1 = TextEditingController();
  TextEditingController Text2 = TextEditingController();

  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("MyApp"))),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 30,),
            TextField(controller: Text1,decoration: InputDecoration(labelText: "Enter the first number")),
            SizedBox(height: 20,),
            TextField(controller: Text2,decoration: InputDecoration(labelText: "Enter the second number")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              int sum = int.parse(Text1.text) + int.parse(Text2.text);
              int tempSum = sum ;
              int armSum = 0 ;
              int len = sum.toString().length;
              while(tempSum>0)
              {
                int digit = tempSum % 10 ;
                int dPower = 1;
                for(int i = 0; i<len; i++)
                {
                  dPower = dPower * digit;
                }
                armSum = armSum + dPower ;
                tempSum = tempSum ~/ 10 ;
              }
              if(sum == armSum){
                str = "login successfully";
              }
              else{
                str = "sum of first and second number is not Armstrong number";
              }
              setState(() {

              });
            }, child: Text("Submit")),
            SizedBox(height: 10,),
            Text(str),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddEmployee2();
              },));
            }, child: Text("Add Employee")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add),),
    );
  }
}
class AddEmployee2 extends StatefulWidget {
  const AddEmployee2({Key? key}) : super(key: key);

  @override
  State<AddEmployee2> createState() => _AddEmployee2State();
}

class _AddEmployee2State extends State<AddEmployee2> {
  TextEditingController Salary = TextEditingController();

  List salaryLis = [];
  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Employee"),),
        body: Column(children: [
          SizedBox(height: 40,),
          Text("Add Employee Details"),
          SizedBox(height: 30,),
          TextField(decoration: InputDecoration(labelText: "Enter Employee Name")),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(labelText: "Enter Employee Email")),
          SizedBox(height: 20,),
          TextField(controller: Salary,decoration: InputDecoration(labelText: "Enter Employee Salary")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            salaryLis.add(int.parse(Salary.text));
            print(Salary.text);
          }, child: Text("Add Employee")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            print(salaryLis);
            for(int i=0;i<salaryLis.length;i++){
              if(salaryLis[i]>=10000 && salaryLis[i]<=50000)
              {
                print(salaryLis[i]);
                str += salaryLis[i].toString();
                str += ",";
              }
            }
            setState(() {

            });
          }, child: Text("Filtered Salary")),
          SizedBox(height: 20,),
          Text(str),
        ],)
    );
  }
}