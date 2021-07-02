import 'package:flutter/material.dart';

import 'package:dating_app/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
