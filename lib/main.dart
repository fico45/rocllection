import 'package:flutter/material.dart';
import 'package:rocllection/screens/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rockllection',
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.brown,
          scaffoldBackgroundColor: const Color(0xFFE5E5E5)),
      home: Dashboard(),
    );
  }
}
