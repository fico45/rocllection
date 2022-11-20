import 'package:flutter/material.dart';
import 'package:rocllection/screens/dashboard/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
