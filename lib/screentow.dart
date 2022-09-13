import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  String FairlyFluent = '';
  String good = '';
  String bad = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "How good is your English ?",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            RadioListTile(
              title: Text('Fairly fluent'),
              value: "Fairly fluent",
              groupValue: FairlyFluent,
              onChanged: ((val) {
                setState(() {
                  FairlyFluent = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text('Good'),
              value: 'Good',
              groupValue: good,
              onChanged: ((val) {
                setState(() {
                  good = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text('Bad'),
              value: 'Bad',
              groupValue: bad,
              onChanged: ((val) {
                setState(() {
                  bad = val.toString();
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
