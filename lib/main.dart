import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/Pages/homePage.dart';
import 'package:setstate1/counterModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => counterModel(),
        ),
      ],
      child: const MaterialApp(
        title: 'My App',
        home: HomePage(),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:setstate1/Pages/homePage.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   ));
// }
