import 'package:flutter/material.dart';

class PersonDeteailPage extends StatefulWidget {
  const PersonDeteailPage({super.key});

  @override
  State<PersonDeteailPage> createState() => _PersonDeteailPageState();
}

class _PersonDeteailPageState extends State<PersonDeteailPage> {
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
