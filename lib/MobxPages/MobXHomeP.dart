// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:setstate1/MobxPages/MobXSecondPage.dart';
import 'package:setstate1/MobxPages/mobXCounterModel.dart';

class MobXHomeP extends StatelessWidget {
  MobXHomeP({super.key});
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
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MobXSecondPage(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child: Text("Geçiş Yap", style: TextStyle(fontSize: 16))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
