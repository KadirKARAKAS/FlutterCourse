import 'package:flutter/material.dart';
import 'package:setstate1/constant.dart';

class MobXSecondPage extends StatelessWidget {
  const MobXSecondPage({super.key});

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
            Text("$sayac2", style: TextStyle(fontSize: 55)),
            GestureDetector(
              onTap: () {},
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
              onTap: () {},
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
