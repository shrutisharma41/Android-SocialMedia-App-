import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia_app/auth/auth.dart';
import 'package:socialmedia_app/firebase_options.dart';
import 'package:socialmedia_app/theme/dark_theme.dart';
import 'package:socialmedia_app/theme/light_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
     MyApp({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const AuthPage(),
    
    );
  }
  }


