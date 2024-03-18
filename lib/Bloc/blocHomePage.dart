import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate1/Bloc/blockSecondPage.dart';

import 'blocCubit.dart';

class BlocHomePage extends StatelessWidget {
  const BlocHomePage({super.key});

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
            BlocBuilder<blocCubit, int>(
              builder: (context, blockCount) {
                return Text(
                  "$blockCount",
                  style: TextStyle(fontSize: 55),
                );
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BlockSecondPage(),
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
