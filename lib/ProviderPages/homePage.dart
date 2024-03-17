import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/ProviderPages/secondPage.dart';
import 'package:setstate1/ProviderPages/counterModel.dart';

import '../MobxPages/MobXHomeP.dart';

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
          children: [
            Column(
              children: [
                Consumer<counterModel>(
                    builder: (context, counterModelObject, child) {
                  return Text(
                    "Provider:${counterModelObject.sayaciOku()}",
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
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MobXHomeP(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.yellow,
                child: const Center(
                    child: Text("MobX", style: TextStyle(fontSize: 16))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
