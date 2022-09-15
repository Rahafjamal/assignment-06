import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  List persons = ["1 person", "2 persons", "2-6 persons"];
  String myselcteditem = "1 person";

  String sitting_area = '';
  bool Breakfast_offer = false;
  bool Lunch_offer = false;
  bool Dinner_offer = false;
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
        child: ListView(
          children: [
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "How many person ? ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            DropdownButton(
                value: myselcteditem,
                items: persons
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          "$e",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.brown[700],
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )))
                    .toList(),
                onChanged: ((val) {
                  setState(() {
                    myselcteditem = val.toString();
                  });
                })),
            Divider(
              height: 20,
            ),
            CheckboxListTile(
                value: Breakfast_offer,
                title: Text("Breakfast_offer"),
                onChanged: ((val) {
                  setState(() {
                    Breakfast_offer = val!;
                  });
                })),
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
