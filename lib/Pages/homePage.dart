import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/Pages/secondPage.dart';
import 'package:setstate1/counterModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Consumer<counterModel>(
                builder: (context, counterModelObject, child) {
              return Text(
                "${counterModelObject.sayaciOku()}",
                style: const TextStyle(fontSize: 60),
              );
            }),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(),
                      ));
                },
                child: Container(
                  width: 90,
                  height: 40,
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      "Geçiş yap",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
