import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rocllection/data/stone/stone_provider.dart';
import 'package:rocllection/modules/dashboard/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rocllection/themes/theme_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANNON_KEY']!,
  );
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoneProvider()),
      ],
      child: MaterialApp(
        title: 'Rockllection',
        theme: CustomTheme.light,
        /* ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.brown,
            scaffoldBackgroundColor: const Color(0xFFE5E5E5)) */
        home: Dashboard(),
      ),
    );
  }
}
