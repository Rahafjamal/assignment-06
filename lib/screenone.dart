import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  String Satarday = '';
  String Sunday = '';
  String Monday = '';
  String Tuseday = '';
  String Wenesday = '';
  String Thuresday = '';
  String Friday = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 150,
            image: AssetImage('images/4.webp'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "Which day would you visit us ? ",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            RadioListTile(
              title: Text(
                'Satarday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: "Satarday",
              groupValue: Satarday,
              onChanged: ((val) {
                setState(() {
                  Satarday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Sunday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Sunday',
              groupValue: Sunday,
              onChanged: ((val) {
                setState(() {
                  Sunday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Monday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Monday',
              groupValue: Monday,
              onChanged: ((val) {
                setState(() {
                  Monday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Tuseday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Tuseday',
              groupValue: Tuseday,
              onChanged: ((val) {
                setState(() {
                  Tuseday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Wenesday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Wenesday',
              groupValue: Wenesday,
              onChanged: ((val) {
                setState(() {
                  Wenesday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Thuresday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Thuresday',
              groupValue: Thuresday,
              onChanged: ((val) {
                setState(() {
                  Thuresday = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Friday',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              value: 'Friday',
              groupValue: Friday,
              onChanged: ((val) {
                setState(() {
                  Friday = val.toString();
                });
              }),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                });
              }),
              child: const Text(
                'Back to HomePage',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
