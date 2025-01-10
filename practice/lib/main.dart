import 'package:flutter/material.dart';
import 'package:practice/Student.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController sname = new TextEditingController();
  TextEditingController sroll = new TextEditingController();
  TextEditingController smark1 = new TextEditingController();
  TextEditingController smark2 = new TextEditingController();
  TextEditingController smark3 = new TextEditingController();
  List<Student> students = [];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Demo App"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: sname,decoration: InputDecoration(labelText: "Enter Student Name"),),
          TextField(controller: sroll,decoration: InputDecoration(labelText: "Enter ROll Number"),),
          TextField(controller: smark1,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          TextField(controller: smark2,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          TextField(controller: smark3,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          ElevatedButton(onPressed: () {
            Student student = new Student();
            student.name = sname.text;
            student.rollno = sroll.text;
            student.mark1 = int.parse(smark1.text);
            student.mark2 = int.parse(smark2.text);
            student.mark3 = int.parse(smark3.text);
            students.add(student);
            print(students);
            setState(() {

            });
          }, child: Text("Enroll"))

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ShowStudent(students);
        },));
      },child: Icon(Icons.navigate_next_rounded),),
    );
  }
}

class ShowStudent extends StatefulWidget {
  List<Student> students = [];
  ShowStudent(this.students);

  @override
  State<ShowStudent> createState() => _ShowStudentState();
}

class _ShowStudentState extends State<ShowStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Details"),),
      body: ListView.builder(itemCount:widget.students.length,itemBuilder: (context, index) {
        return ListTile(onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return ViewStudent(widget.students,index);
          },));
        },
          title: Text(widget.students[index].name),
          subtitle: Text(widget.students[index].rollno),
          leading: Icon(Icons.accessibility_new),
        );
      },),

    );
  }
}

class ViewStudent extends StatefulWidget {
  // Student student;
  List<Student> students;
  int index;
  ViewStudent(this.students,this.index);


  @override
  State<ViewStudent> createState() => _ViewStudentState();
}

class _ViewStudentState extends State<ViewStudent> {
  void refreshPage(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Details"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Studennt Name : "+widget.students[widget.index].name),
          Text("Roll Number : "+widget.students[widget.index].rollno),
          Text("Marks of Subject1 : "+widget.students[widget.index].mark1.toString()),
          Text("Marks of Subject2 : "+widget.students[widget.index].mark2.toString()),
          Text("Marks of Subject3 : "+widget.students[widget.index].mark3.toString()),
          ElevatedButton(onPressed: () {
            // widget.students.remove(widget.student);
            // print("Student Deleted!");
            // print(widget.students);
            widget.students.removeAt(widget.index);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return ShowStudent(widget.students);
            },)).then((value) => refreshPage());
          }, child: Text("DELETE")),
          ElevatedButton(onPressed: () {

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return UpdateStudent(widget.students,widget.index);
            },));
          }, child: Text("Update"))

        ],
      ),
    );
  }
}


class UpdateStudent extends StatefulWidget {
  List<Student> students;
  int index;
  UpdateStudent(this.students,this.index);

  @override
  State<UpdateStudent> createState() => _UpdateStudentState();
}

class _UpdateStudentState extends State<UpdateStudent> {
  TextEditingController usname = new TextEditingController();
  TextEditingController usroll = new TextEditingController();
  TextEditingController usmark1 = new TextEditingController();
  TextEditingController usmark2 = new TextEditingController();
  TextEditingController usmark3 = new TextEditingController();
  void refreshPage(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Page"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: usname,decoration: InputDecoration(labelText: "Enter Student Name"),),
          TextField(controller: usroll,decoration: InputDecoration(labelText: "Enter ROll Number"),),
          TextField(controller: usmark1,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          TextField(controller: usmark2,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          TextField(controller: usmark3,decoration: InputDecoration(labelText: "Enter Marks of Subject 1"),),
          ElevatedButton(onPressed: () {
            widget.students[widget.index].name = usname.text;
            widget.students[widget.index].rollno = usroll.text;
            widget.students[widget.index].mark1 = int.parse(usmark1.text);
            widget.students[widget.index].mark2 = int.parse(usmark2.text);
            widget.students[widget.index].mark3 = int.parse(usmark3.text);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return ShowStudent(widget.students);
            },)).then((value) => refreshPage());
          }, child: Text("update"))
        ],
      ),
    );
  }
}
