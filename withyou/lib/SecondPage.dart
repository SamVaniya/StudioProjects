import 'package:flutter/material.dart';
import 'package:withyou/sharedData.dart';

class SCpage extends StatefulWidget {
  const SCpage({Key? key}) : super(key: key);

  @override
  State<SCpage> createState() => _SCpageState();
}

class _SCpageState extends State<SCpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount:SharedData.datalist.length,itemBuilder: (context, index) {
        return Card(
          child: ListTile(onTap:() {

          },title: Text(SharedData.datalist[index].name),
        ));
      },)
    );
  }
}
