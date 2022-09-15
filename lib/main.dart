import 'package:flutter/material.dart';
import 'package:newapp/screenone.dart';
import 'package:newapp/screentow.dart';

void main() {
  runApp(const MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            image: AssetImage('images/2.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "Welcome to our cafe app ",
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
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Data();
                  }));
                });
              }),
              child: const Text(
                "Choose visit day",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return English();
                  }));
                });
              }),
              child: const Text(
                "Fill your information",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
