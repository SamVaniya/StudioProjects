import 'package:flutter/material.dart';
import 'package:menu_nav/SharedData.dart';

void main() {
  runApp(const MaterialApp(
    home: DrawerDemoApp(),
  ));
}

class TabDemoApp extends StatelessWidget {
  const TabDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Settings",
                icon: Icon(Icons.settings),
              ),
            ]),
          ),
          body:
              TabBarView(children: [Tab1Class(), Tab2Class()]),
        ));
  }
}


class Tab1Class extends StatelessWidget {
  const Tab1Class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [TextField(),TextField()]),);
  }
}
class Tab2Class extends StatelessWidget {
  const Tab2Class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}



class DrawerDemoApp extends StatelessWidget {
  const DrawerDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange, child: Text("V")),
              accountName: Text("Vishal"),
              accountEmail: Text("vishal@gmail.com")),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AddData();
                },
              ));
            },
            leading: Icon(Icons.add),
            title: Text("Add Data"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ViewData();
                },
              ));
            },
            leading: Icon(Icons.list),
            title: Text("View Data"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ViewFavs();
                },
              ));
            },
            leading: Icon(Icons.star),
            title: Text("Fav Data"),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text("Demo"),
      ),
    );
  }
}

class AddData extends StatelessWidget {
  AddData({Key? key}) : super(key: key);
  TextEditingController txtName = new TextEditingController();

  TextEditingController txtColor = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ViewData();
            },
          ));
        },
      ),
      body: Column(
        children: [
          TextField(
            controller: txtName,
            decoration: InputDecoration(labelText: "Enter Name"),
          ),
          TextField(
            controller: txtColor,
            decoration: InputDecoration(labelText: "Enter Color"),
          ),
          ElevatedButton(
              onPressed: () {
                Car newCar = new Car();
                newCar.name = txtName.text;
                newCar.color = txtColor.text;

                SharedData.lstCars.add(newCar);
                print(SharedData.lstCars.length);
              },
              child: Text("Save"))
        ],
      ),
    );
  }
}

class ViewData extends StatefulWidget {
  const ViewData({Key? key}) : super(key: key);

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  void refreshPage() {
    print("On Back");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Data"),
      ),
      body: ListView.builder(
        itemCount: SharedData.lstCars.length,
        itemBuilder: (context, index) {class ViewData extends StatefulWidget {

          return ListTile(
            onTap: () {
              SharedData.selectedIndex = index;

              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoDetail();
                },
              )).then((value) => refreshPage());
            },
            title: Text(SharedData.lstCars[index].name),
          );
        },
      ),
    );
  }
}

class ShoDetail extends StatefulWidget {
  const ShoDetail({Key? key}) : super(key: key);

  @override
  State<ShoDetail> createState() => _ShoDetailState();
}

class _ShoDetailState extends State<ShoDetail> {
  String strFav = "False";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Details"),
      ),
      body: Column(
        children: [
          Text(
            SharedData.lstCars[SharedData.selectedIndex].name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            SharedData.lstCars[SharedData.selectedIndex].color,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            SharedData.lstCars[SharedData.selectedIndex].isFav.toString(),
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () {
                print(SharedData.lstCars.length);
                SharedData.lstCars.removeAt(SharedData.selectedIndex);
                print(SharedData.lstCars.length);
                Navigator.pop(context);
              },
              child: Text("Delete")),
          ElevatedButton(
              onPressed: () {
                if (SharedData.lstCars[SharedData.selectedIndex].isFav ==
                    true) {
                  SharedData.lstCars[SharedData.selectedIndex].isFav = false;
                } else {
                  SharedData.lstCars[SharedData.selectedIndex].isFav = true;
                }
                setState(() {});
              },
              child: Icon(Icons.star))
        ],
      ),
    );
  }
}

class ViewFavs extends StatelessWidget {
  ViewFavs({Key? key}) : super(key: key);
  List<Car> tmpList = [];

  @override
  Widget build(BuildContext context) {
    for (int cntr = 0; cntr < SharedData.lstCars.length; cntr++) {
      if (SharedData.lstCars[cntr].isFav == true) {
        tmpList.add(SharedData.lstCars[cntr]);
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("View Favs")),
      body: ListView.builder(
        itemCount: tmpList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tmpList[index].name),
          );
        },
      ),
    );
  }
}

class Car {
  String name = "";
  String color = "";
  bool isFav = false;
}
