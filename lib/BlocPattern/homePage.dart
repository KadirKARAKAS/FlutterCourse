import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate1/BlocPattern/patternCubic.dart';

class BlockPaternHomePage extends StatefulWidget {
  const BlockPaternHomePage({super.key});

  @override
  State<BlockPaternHomePage> createState() => _BlockPaternHomePageState();
}

class _BlockPaternHomePageState extends State<BlockPaternHomePage> {
  var text1 = TextEditingController();
  var text2 = TextEditingController();
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
              BlocBuilder<PatternCubit, int>(
                builder: (context, total) {
                  return Text(total.toString(),
                      style: const TextStyle(fontSize: 55));
                },
              ),
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
                      context
                          .read<PatternCubit>()
                          .toplama(alinanSayi1, alinanSayi2);
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
                      String alinanSayi1 = text1.text;
                      String alinanSayi2 = text2.text;
                      context
                          .read<PatternCubit>()
                          .carpma(alinanSayi1, alinanSayi2);
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      color: Colors.grey,
                      child: const Center(child: Text("Çarpma")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
