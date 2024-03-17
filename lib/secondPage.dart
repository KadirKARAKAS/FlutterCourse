import 'package:flutter/material.dart';

import 'constant.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Course"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("$sayac", style: const TextStyle(fontSize: 24)),
        InkWell(
            onTap: () {},
            child: Container(
              width: 90,
              height: 40,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  "Sayaç Arttır",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )),
        const SizedBox(height: 10),
        InkWell(
            onTap: () {},
            child: Container(
              width: 90,
              height: 40,
              color: Colors.grey,
              child: const Center(
                  child: Text(
                "Sayaç Azalt",
                style: TextStyle(fontSize: 16),
              )),
            )),
      ])),
    );
  }
}
