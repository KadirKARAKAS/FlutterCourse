import 'package:flutter/material.dart';

class BlockPaternHomePage extends StatefulWidget {
  const BlockPaternHomePage({super.key});

  @override
  State<BlockPaternHomePage> createState() => _BlockPaternHomePageState();
}

class _BlockPaternHomePageState extends State<BlockPaternHomePage> {
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
            TextField(),
            TextField(),
            Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Colors.grey,
                  child: Text("Topla"),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Colors.grey,
                  child: Text("Çıkar"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
