import 'package:flutter/material.dart';
import 'package:withyoudemo/UserData.dart';

void main() {
  runApp(MaterialApp(home:  WelcomPage(),));
}

// welcome page for first time signup user
class WelcomPage extends StatefulWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
          color: themeclr,
          fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 20,),
            Text("WithYou Always!....",
                style: TextStyle(fontSize: 30,
                    color: themeclr,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 80,),
            Text("Welcome to Withyou",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            Text("      Your Well-Being buddy!.....",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text("    Hey friend!",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("      this is the first step towards our friendship ",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("    i want to know about you something",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("    So, Tell me about yourself.....buddy.......",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UsernamePage();
              },));
            }, child: Text("Proceed"),style: ElevatedButton.styleFrom(
            backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)


          ],
        ),
      ),
    );;
  }
}


// take username page
class UsernamePage extends StatefulWidget {
  const UsernamePage({Key? key}) : super(key: key);

  @override
  State<UsernamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  Color themeclr = Colors.deepPurpleAccent;
  TextEditingController username = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey dear friend",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("My name is withyou because i am always with you!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text(" What's your good name buddy!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: username,
              decoration: InputDecoration(labelText: "Enter your name buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                  borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              UserData user = new UserData();
              user.username = username.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EmailPage(user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}

// take email page
class EmailPage extends StatefulWidget {
  UserData user;
  EmailPage(this.user);

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  TextEditingController email = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("I used to send mails to my friends",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      Give me your Email ID, So I can mail you!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: email,
              decoration: InputDecoration(labelText: "Enter your Email ID buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.email = email.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ContactPage(widget.user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}


// take contact number page
class ContactPage extends StatefulWidget {
  UserData user;
  ContactPage(this.user);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController contact = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("I would like to send sms too to my friends",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      Give me your Mobile Number, So I can contact you!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: contact,
              decoration: InputDecoration(labelText: "Enter your Contact number buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.contact = contact.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Dobpage(widget.user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}


// take date of birth
class Dobpage extends StatefulWidget {
  UserData user;
  Dobpage(this.user);

  @override
  State<Dobpage> createState() => _DobpageState();
}

class _DobpageState extends State<Dobpage> {
  TextEditingController dob = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("I like bithday parties!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      Give me your Date of Birth, So we can celebrate your birthday!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: dob,
              decoration: InputDecoration(labelText: "Enter your Date of birth buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.dob = dob.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GenderPage(widget.user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}



// take gender page
class GenderPage extends StatefulWidget {
  UserData user;
  GenderPage(this.user);

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  TextEditingController gender = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("I am little bit stupid buddy! what's your gender",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      I promise you it does not affect our friendship!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: gender,
              decoration: InputDecoration(labelText: "Enter your gender buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.gender = gender.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HobbiesPage(widget.user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}

// take hobbies page
class HobbiesPage extends StatefulWidget {
  UserData user;
  HobbiesPage(this.user);

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  TextEditingController hobbies = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("I like to know about your hobbies!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      Tell me about your hobbies, So we can know each other better!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: hobbies,
              decoration: InputDecoration(labelText: "Enter your Hobbies buddy",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.hobbies = hobbies.text;
              print(widget.user.username);
              print(widget.user.email);
              print(widget.user.contact);
              print(widget.user.gender);
              print(widget.user.dob);
              print(widget.user.hobbies);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return PassPage(widget.user);
              },));
            }, child: Text("Next"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)

          ],
        ),
      ),
    );
  }
}

class PassPage extends StatefulWidget {
  UserData user;
  PassPage(this.user);

  @override
  State<PassPage> createState() => _PassPageState();
}

class _PassPageState extends State<PassPage> {
  TextEditingController password = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('SignUp',
          style: TextStyle(fontSize: 30,
              color: themeclr,
              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white70,
        foregroundColor: themeclr,
        elevation: 5.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 50,),
            Text("      Hey "+widget.user.username,style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("Set your password friend!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 50,),
            Text("      Set a strong password like our friendship!!!",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            TextField(controller: password,
              decoration: InputDecoration(labelText: "Enter your password",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                      borderRadius: BorderRadius.circular(30))),),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: () {
              widget.user.password = password.text;
              print(widget.user.username);
              print(widget.user.email);
              print(widget.user.contact);
              print(widget.user.gender);
              print(widget.user.dob);
              print(widget.user.hobbies);
              print(widget.user.password);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return HomePage(widget.user);
              },));
            }, child: Text("Done Buddy"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            )

          ],
        ),
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  UserData user;
  LoginPage(this.user);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  Color themeclr = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
              radius: 110,
            ),
          ),
          SizedBox(height: 30,),
          TextField(controller: email,
            decoration: InputDecoration(labelText: "Enter your Email",
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                    borderRadius: BorderRadius.circular(30))),),
          SizedBox(height: 10.0),
          TextField(controller: password,
            decoration: InputDecoration(labelText: "Enter your Password",
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: themeclr),
                    borderRadius: BorderRadius.circular(30))),),
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: () {
            
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage(widget.user);
            },));
          }, child: Text("Done Buddy"),style: ElevatedButton.styleFrom(
              backgroundColor: themeclr,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          )


        ],
      ),
    );
  }
}



// home page
class HomePage extends StatefulWidget {
  UserData user;
  HomePage(this.user);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color themeclr = Colors.greenAccent;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if(index==0){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage(widget.user);
      },));
    }else if(index==1){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Musicpage();
      },));
    }else if(index==2){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Videopage();
      },));
    }else if(index==3){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Settingpage(widget.user);
      },));
    }
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.orange, child: Text(widget.user.username[0])),
                accountName: Text(widget.user.username,style: TextStyle(color: Colors.black),),
                decoration: BoxDecoration(color: themeclr),
                accountEmail: Text(widget.user.email,style: TextStyle(color: Colors.black),)),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Settingpage(widget.user);
                  },
                ));
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Settingpage(widget.user);
                  },
                ));
              },
              leading: Icon(Icons.workspace_premium),
              title: Text("Go with Premium"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Musicpage();
                  },
                ));
              },
              leading: Icon(Icons.library_music_outlined),
              title: Text("Music Therapy"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Videopage();
                  },
                ));
              },
              leading: Icon(Icons.video_library_outlined),
              title: Text("Video Remedies"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Storypage();
                  },
                ));
              },
              leading: Icon(Icons.multitrack_audio),
              title: Text("Story Remedies"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Yogapage();
                  },
                ));
              },
              leading: Icon(Icons.settings_accessibility_outlined),
              title: Text("Yoga Remedies"),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return ViewFavs();
                //   },
                // ));
              },
              leading: Icon(Icons.star),
              title: Text("Favorite Music"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage(widget.user);
                  },
                ));
              },
              leading: Icon(Icons.logout_outlined),
              title: Text("Log out"),
            ),
          ]),
        ),
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 90,vertical: 30),
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              color: themeclr,
              child: Text("Quote : Laughter is best medicine!"),
              // constraints: BoxConstraints.expand(),
            ),
            SizedBox(height: 20,),
            Text('Recently Added Music'),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
              color: themeclr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          IconButton(onPressed: () {

                          },icon: Icon(Icons.library_music_outlined)),
                          Text('Music 1')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          IconButton(onPressed: () {

                          },icon: Icon(Icons.library_music_outlined)),
                          Text('Music 2')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          IconButton(onPressed: () {

                          },icon: Icon(Icons.library_music_outlined)),
                          Text('Music 3')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          IconButton(onPressed: () {

                          },icon: Icon(Icons.library_music_outlined)),
                          Text('Music 4')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      // padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          IconButton(onPressed: () {

                          },icon: Icon(Icons.library_music_outlined)),
                          Text('Music 5')
                        ],
                      ),
                    ),
                  ),

                ],
              )
              // constraints: BoxConstraints.expand(),
            ),
            SizedBox(height: 20,),
            Text('Recently Added Videos'),
            SizedBox(height: 5,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
                color: themeclr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.ondemand_video)),
                            Text('Video 1')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.ondemand_video)),
                            Text('Video 2')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.ondemand_video)),
                            Text('Video 3')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.ondemand_video)),
                            Text('Video 4')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        // padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.ondemand_video)),
                            Text('Video 5')
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              // constraints: BoxConstraints.expand(),
            ),
            SizedBox(height: 20,),
            Text('Recently Added Stories'),
            SizedBox(height: 5,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
                color: themeclr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.not_listed_location)),
                            Text('Story 1')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.not_listed_location)),
                            Text('Story 2')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.not_listed_location)),
                            Text('Story 3')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.not_listed_location)),
                            Text('Story 4')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        // padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            IconButton(onPressed: () {

                            },icon: Icon(Icons.not_listed_location)),
                            Text('Story 5')
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              // constraints: BoxConstraints.expand(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label: 'Music Therapy',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: 'Video Remedy',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: themeclr,
        onTap: _onItemTapped,
      ),
    );
  }
}


class Musicpage extends StatefulWidget {
  const Musicpage({Key? key}) : super(key: key);

  @override
  State<Musicpage> createState() => _MusicpageState();
}

class _MusicpageState extends State<Musicpage> {
  Color themeclr = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou - Music therapy',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      // mishru
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(itemCount:20,itemBuilder: (context, index) {
          return Card(
            child: ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Playpage();
              },));
            },
              title: Text("music - "+(index+1).toString()),
              subtitle: Text("Joyful"),),

          );
        },),
      ),
    );
  }
}

class Videopage extends StatefulWidget {
  const Videopage({Key? key}) : super(key: key);

  @override
  State<Videopage> createState() => _VideopageState();
}

class _VideopageState extends State<Videopage> {
  Color themeclr = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou - Videos',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(itemCount:20,itemBuilder: (context, index) {
          return Card(
            child: ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Playpage();
              },));
            },
              title: Text("video - "+(index+1).toString()),
              subtitle: Text("joyful"),),

          );
        },),
      ),
    );
  }
}


class Storypage extends StatefulWidget {
  const Storypage({Key? key}) : super(key: key);

  @override
  State<Storypage> createState() => _StorypageState();
}

class _StorypageState extends State<Storypage> {
  Color themeclr = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou - Stories',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(itemCount:20,itemBuilder: (context, index) {
          return Card(
            child: ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Playpage();
              },));
            },
              title: Text("Story - "+(index+1).toString()),
              subtitle: Text("Joyful"),),

          );
        },),
      ),
    );
  }
}

class Yogapage extends StatefulWidget {
  const Yogapage({Key? key}) : super(key: key);

  @override
  State<Yogapage> createState() => _YogapageState();
}

class _YogapageState extends State<Yogapage> {
  Color themeclr = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou - yogas',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(itemCount:20,itemBuilder: (context, index) {
          return Card(
            child: ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Playpage();
              },));
            },
              title: Text("Yoga - "+(index+1).toString()),
              subtitle: Text("Refreshment"),),

          );
        },),
      ),
    );
  }
}

class Settingpage extends StatefulWidget {
  UserData user;
  Settingpage(this.user);

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  Color themeclr = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Settings',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: ListView(children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange, child: Text(widget.user.username[0])),
            accountName: Text(widget.user.username,style: TextStyle(color: Colors.black),),
            decoration: BoxDecoration(color: themeclr),
            accountEmail: Text(widget.user.email,style: TextStyle(color: Colors.black),)),

        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Premiumpage();
              },
            ));
          },
          leading: Icon(Icons.workspace_premium),
          title: Text("Go with Premium"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Musicpage();
              },
            ));
          },
          leading: Icon(Icons.library_music_outlined),
          title: Text("Music Therapy"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Videopage();
              },
            ));
          },
          leading: Icon(Icons.video_library_outlined),
          title: Text("Video Remedies"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Storypage();
              },
            ));
          },
          leading: Icon(Icons.multitrack_audio),
          title: Text("Story Remedies"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Yogapage();
              },
            ));
          },
          leading: Icon(Icons.settings_accessibility_outlined),
          title: Text("Yoga Remedies"),
        ),
        ListTile(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(
            //   builder: (context) {
            //     return ViewFavs();
            //   },
            // ));
          },
          leading: Icon(Icons.star),
          title: Text("Favorite Music"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return LoginPage(widget.user);
              },
            ));
          },
          leading: Icon(Icons.logout_outlined),
          title: Text("Log out"),
        ),
      ]),
    );
  }
}


class Premiumpage extends StatefulWidget {
  const Premiumpage({Key? key}) : super(key: key);

  @override
  State<Premiumpage> createState() => _PremiumpageState();
}

class _PremiumpageState extends State<Premiumpage> {
  Color themeclr = Colors.greenAccent;
  String msg='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('WithYou - Go with premium',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            SizedBox(height: 20,),
            Text("Premium Friendship... WithYou Always!....",
                style: TextStyle(fontSize: 30,
                    color: themeclr,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 80,),
            Text("Go with premium to use more features",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            Text("      1.Online therapy Support",style: TextStyle(color: themeclr,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text("    2. Virtual Personalize assistant",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("     3.Mental health tracking with sensor devices",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("    ",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("    4.More premium music, videos, stories and many more...",style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return UsernamePage();
              // },));
              msg = "Hey Now your are premium friend";
              setState(() {

              });
            }, child: Text("Be Premium"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),),
            SizedBox(height: 10,),
            Text(msg,style: TextStyle(color: themeclr,fontSize: 22,fontWeight: FontWeight.bold),),



          ],
        ),
      ),
    );
  }
}

class Playpage extends StatefulWidget {
  const Playpage({Key? key}) : super(key: key);

  @override
  State<Playpage> createState() => _PlaypageState();
}

class _PlaypageState extends State<Playpage> {
  Color themeclr = Colors.greenAccent;
  double plays = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Play It!',
          style: TextStyle(fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
        backgroundColor: themeclr,
        foregroundColor: Colors.white70,
        elevation: 10.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/withyouLOGO.png"),
            fit: BoxFit.cover,
            opacity: 990.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/withyouLOGO.png"),
                radius: 110,
              ),
            ),
            Slider(value: plays, onChanged: (value) {
              plays = value;
              setState(() {

              });
            },min: 0,max: 30,),

            ElevatedButton(onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return UsernamePage();
              // },));
            }, child: Text("Play"),style: ElevatedButton.styleFrom(
                backgroundColor: themeclr,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),)


          ],
        ),
      ),
    );
  }
}






// demo of the stepper widget which breaks tasks in steps

class MyStepperWidget extends StatefulWidget {
  @override
  _MyStepperWidgetState createState() => _MyStepperWidgetState();
}

class _MyStepperWidgetState extends State<MyStepperWidget> {
  int _currentStep = 0;
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _contactController = new TextEditingController();

  List<Step> _steps = [];

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _contactController = TextEditingController();

    _steps = [
      Step(
        title: Text('Username'),
        content: TextFormField(
          controller: _usernameController,
          decoration: InputDecoration(labelText: 'Enter your username'),
        ),
        isActive: true,
      ),
      Step(
        title: Text('Email'),
        content: TextFormField(
          controller: _emailController,
          decoration: InputDecoration(labelText: 'Enter your email'),
        ),
        isActive: true,
      ),
      Step(
        title: Text('Contact'),
        content: TextFormField(
          controller: _contactController,
          decoration: InputDecoration(labelText: 'Enter your contact'),
        ),
        isActive: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Example'),
      ),
      body: Stepper(
        steps: _steps,
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps.length - 1) {
              _currentStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep--;
            }
          });
        },
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
      ),
    );
  }
}
