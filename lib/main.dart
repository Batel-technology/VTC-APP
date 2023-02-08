import 'package:flutter/material.dart';
import 'package:vtc_app/pages/home_page.dart';
import 'package:vtc_app/pages/on-boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VTC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingPage(),
    );
  }
}
