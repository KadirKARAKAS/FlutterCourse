import 'package:flutter/material.dart';
import 'package:setstate1/BlocPattern/homePage.dart';
import 'package:setstate1/MobxPages/mobXHomeP.dart';
import 'package:setstate1/PersonsApp/Pages/personHomePage.dart';

import 'Bloc/blocHomePage.dart';
import 'ProviderPages/providerHomePage.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProviderHomePage(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child: Text(
                  "Provider",
                  style: TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(height: 10),
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
                color: Colors.grey,
                child: const Center(
                    child: Text(
                  "MobX",
                  style: TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocHomePage(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child: Text(
                  "Bloc",
                  style: TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BlockPaternHomePage(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child: Text(
                  "BlocPattern",
                  style: TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonHomePage(),
                    ));
              },
              child: Container(
                width: 90,
                height: 40,
                color: Colors.grey,
                child: const Center(
                    child: Text(
                  "PersonApp",
                  style: TextStyle(fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
