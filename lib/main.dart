import 'package:flutter/material.dart';
import 'package:smartklinik/UI/poli/poli_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Klinik',
      debugShowCheckedModeBanner: false, 
      home: const PoliPage(),
    );
  }
}
