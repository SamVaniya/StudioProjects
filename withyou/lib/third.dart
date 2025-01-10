import 'package:flutter/material.dart';
import 'package:withyou/sharedData.dart';

class ThirdPage extends StatefulWidget {
  String str = '';
  int no = 0;
  ThirdPage(this.str,this.no);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text(SharedData.name),),
      body: Text(widget.str+widget.no.toString()),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },),
    );
  }
}
