import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/ProviderPages/providerSecondPage.dart';
import 'package:setstate1/ProviderPages/counterModel.dart';

class ProviderHomePage extends StatefulWidget {
  const ProviderHomePage({super.key});

  @override
  State<ProviderHomePage> createState() => _ProviderHomePageState();
}

class _ProviderHomePageState extends State<ProviderHomePage> {
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
                style: const TextStyle(fontSize: 55),
              );
            }),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProviderSecondPage(),
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
