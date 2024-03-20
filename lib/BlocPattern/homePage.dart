import 'package:flutter/material.dart';

class BlockPaternHomePage extends StatefulWidget {
  const BlockPaternHomePage({super.key});

  @override
  State<BlockPaternHomePage> createState() => _BlockPaternHomePageState();
}

class _BlockPaternHomePageState extends State<BlockPaternHomePage> {
  var text1 = TextEditingController();
  var text2 = TextEditingController();
  int sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Course"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(sonuc.toString(), style: const TextStyle(fontSize: 55)),
              TextField(
                controller: text1,
                decoration: const InputDecoration(hintText: "Number1"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: text2,
                decoration: const InputDecoration(hintText: "Number2"),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      String alinanSayi1 = text1.text;
                      String alinanSayi2 = text2.text;
                      int sayi1 = int.parse(alinanSayi1);
                      int sayi2 = int.parse(alinanSayi2);
                      int total = sayi1 + sayi2;
                      print(total);
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      color: Colors.grey,
                      child: const Center(child: Text("Topla")),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      String alinanSayi3 = text1.text;
                      String alinanSayi4 = text2.text;
                      int sayi1 = int.parse(alinanSayi3);
                      int sayi2 = int.parse(alinanSayi4);
                      int total = sayi1 * sayi2;
                      sonuc = total;
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      color: Colors.grey,
                      child: const Center(child: Text("Çarpma")),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
