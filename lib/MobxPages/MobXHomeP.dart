import 'package:flutter/material.dart';

class MobXHomeP extends StatefulWidget {
  const MobXHomeP({super.key});

  @override
  State<MobXHomeP> createState() => _MobXHomePState();
}

class _MobXHomePState extends State<MobXHomeP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Course"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
