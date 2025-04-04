import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PetScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PetScreen extends StatefulWidget {
  @override
  _PetScreenState createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  String petName = "Bruno 🐶";

  void changePetName() {
    setState(() {
      petName = "Kitty 🐱";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Pet!"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pet Name:",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              petName,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: changePetName,
              child: Text("Change Pet"),
            )
          ],
        ),
      ),
    );
  }
}
