import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:setstate1/Bloc/blocCubit.dart';
import 'package:setstate1/ProviderPages/counterModel.dart';

import 'mainHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => blocCubit(),
        ),
        ChangeNotifierProvider(
          create: (context) => counterModel(),
        ),
      ],
      child: const MaterialApp(
        title: 'My App',
        home: MainHomePage(),
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
