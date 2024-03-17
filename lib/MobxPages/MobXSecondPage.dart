// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'mobXCounterModel.dart';

class MobXSecondPage extends StatelessWidget {
  MobXSecondPage({super.key});

  var counterModel = mobXModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Course"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return Text("${counterModel.sayac2}",
                  style: TextStyle(fontSize: 55));
            }),
            GestureDetector(
              onTap: () {
                counterModel.counterUp();
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child:
                        Text("Sayaç Arttır", style: TextStyle(fontSize: 16))),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                counterModel.counterDown();
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child:
                        Text("Sayaç Azalat", style: TextStyle(fontSize: 16))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
