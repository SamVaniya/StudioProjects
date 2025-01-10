import 'package:flutter/material.dart';

import 'demo.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController f1 = new TextEditingController();
  TextEditingController f2 = new TextEditingController();
  bool f3 = true;
  double f4 = 0;
  List<Demo> demos = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Insert Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: f1,decoration: InputDecoration(labelText: "Enter field 1"),),
          TextField(controller: f2,decoration: InputDecoration(labelText: "Enter field 1"),),
          Checkbox(value: f3, onChanged: (value) {
            f3 = value!;
            print(f3);
            setState(() {

            });
          },),
          Slider(min: 0,max: 100,activeColor: Colors.green,value: f4, onChanged: (value) {
            f4 = value;
            print(f4.toInt());
            setState(() {

            });
          },),
          ElevatedButton(onPressed: () {
            Demo demo = new Demo();
            demo.fn1 = f1.text;
            demo.fn2 = f2.text;
            demo.fn3 = f3;
            demo.fn4 = f4;
            demos.add(demo);
            print(demos.length);
          }, child: Text('Insert'))
          
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SecPage(demos);
        },));
      },child: Text('next'),),
    );
  }
}

class SecPage extends StatefulWidget {
  List<Demo> demos;
  SecPage(this.demos);

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SAf'),),
      body: ListView.builder(itemCount:widget.demos.length,itemBuilder: (context, index) {
        return Card(
          child: ListTile(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ThirdPage(widget.demos, index);
            },));
          },title: Text(widget.demos[index].fn1),
          subtitle: Text(widget.demos[index].fn2),
          leading: Icon(Icons.accessibility),),
        );
      },),
    );
  }
}


class ThirdPage extends StatefulWidget {
  List<Demo> demos;
  int index;
  ThirdPage(this.demos,this.index);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  void refreshPage(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Singlle Show'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('f1 : '+widget.demos[widget.index].fn1),
          Text('f2 : '+widget.demos[widget.index].fn2),
          Text('f3 : '+widget.demos[widget.index].fn3.toString()),
          Text('f4 : '+widget.demos[widget.index].fn4.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                widget.demos.removeAt(widget.index);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecPage(widget.demos);
                },)).then((value) => refreshPage());
              }, child: Text('Delete')),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ForthPage();
                },));
              }, child: Text('Update')),
            ],
          )
        ],
      ),

    );
  }
}


class ForthPage extends StatefulWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  State<ForthPage> createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {
  TextEditingController uf1 = new TextEditingController();
  TextEditingController uf2 = new TextEditingController();
  bool uf3 = true;
  double uf4 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(),
          TextField(),
          Checkbox(value: uf3, onChanged: (value) {
            setState(() {

            });
          },),
          Slider(value: uf4, onChanged: (value) {
            setState(() {

            });
          },)

        ],
      ),
    );
  }
}
