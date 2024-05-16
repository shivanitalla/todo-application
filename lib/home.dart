import 'package:flutter/material.dart';
import 'package:todoapp/save.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var a = [
    {"title": "Flutter Introductiom"},
    {"title": "Data types"},
    {"title": "Flutter Classes:3:30 p.m to 5.00 p.m"},
    {"title": "hello"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('VITA FLUTTER TODO'),
        ),
        body: ListView.builder(
          itemCount: a.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
                title: Text(a[index]['title'].toString()),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) => const Save()));
                    },
                    icon: const Icon(Icons.edit)));
          },
        ));
  }
}
