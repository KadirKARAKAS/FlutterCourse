import 'package:flutter/material.dart';

class PersonHomePage extends StatefulWidget {
  const PersonHomePage({super.key});

  @override
  State<PersonHomePage> createState() => _PersonHomePageState();
}

class _PersonHomePageState extends State<PersonHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Person List"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [],
      )),
    );
  }
}
