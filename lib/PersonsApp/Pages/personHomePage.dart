import 'package:flutter/material.dart';
import 'package:setstate1/PersonsApp/Pages/addPersonPage.dart';

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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddPersonPage(),
                )).then((value) => {
                  print("Deneme"),
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}
