
import 'package:flutter/material.dart';
import 'package:tela_dio/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const HomePage(title: 'Floricultura'),
    );
  }
}