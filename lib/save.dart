import 'package:flutter/material.dart';
import 'package:todoapp/update.dart';

class Save extends StatefulWidget {
  const Save({super.key});

  @override
  State<Save> createState() => _SaveState();
}

class _SaveState extends State<Save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('VITA FLUTTER TODO'),backgroundColor: const Color.fromARGB(255, 250, 193, 234),
        centerTitle: true,
      ),
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Text('SHIVANI TALLA',style: TextStyle(fontSize: 20),),
            const SizedBox(height: 20.0,),
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
          const  TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.calendar_today),
                hintText: 'Dateee',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
              ),
            ),
            // const TextField(
            //   decoration: InputDecoration(
            //       prefix: Icon(Icons.calendar_today),
            //       hintText: 'Date',
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            // ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (contex) => const Update()));},
                  child: const Text('Save'),
                ),
                const SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {Navigator.pop(context);},
                  child: const Text('Back'),
                )
              ],
            ),
          ]),
        ),
        ],
      ),
    );
  }
}