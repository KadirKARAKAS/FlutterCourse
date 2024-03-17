import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/counterModel.dart';

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
        Consumer<counterModel>(builder: (context, counterModelObject, child) {
          return Text(
            "${counterModelObject.sayaciOku()}",
            style: const TextStyle(fontSize: 60),
          );
        }),
        Consumer<counterModel>(builder: (context, counterModelObject, child) {
          return GestureDetector(
              onTap: () {
                counterModelObject.countIncrease();
              },
              child: Container(
                  width: 90,
                  height: 40,
                  color: Colors.grey,
                  child: const Center(
                      child: Text("Sayaç Arttır",
                          style: TextStyle(fontSize: 16)))));
        }),
        const SizedBox(height: 10),
        Consumer<counterModel>(builder: (context, counterModelObject, child) {
          return GestureDetector(
              onTap: () {
                counterModelObject.countReduce();
              },
              child: Container(
                  width: 90,
                  height: 40,
                  color: Colors.grey,
                  child: const Center(
                      child: Text("Sayaç Azalt",
                          style: TextStyle(fontSize: 16)))));
        }),
      ])),
    );
  }
}
