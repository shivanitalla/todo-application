import 'package:flutter/material.dart';
import 'package:todoapp/save.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VITA FLUTTER TODO'),backgroundColor: const Color.fromARGB(255, 250, 193, 234),
        centerTitle: true,
      ),
      body: ListView(
        children: [ Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const Text('SHIVANI TALLA',style: TextStyle(fontSize: 20),),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Topic name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              maxLines: 7,
              decoration: const InputDecoration(
                hintText: 'Details',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            
            const SizedBox(
              height: 10.0,
            ),
        
            const TextField(
              decoration: InputDecoration(
                  prefix: Icon(Icons.calendar_today),
                  hintText: 'Date',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Save()));},
                  child: const Text('Update'),
                ),
                
              ],
            ),
          ]),
        ),
        ],
      ),
 
    );
  }
}