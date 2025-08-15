import 'package:flutter/material.dart';
import 'package:quiz_app/admin/admin.dart';
import 'package:quiz_app/pages/home.dart';
import 'package:quiz_app/pages/question.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Admin(),
      ),
    );
  }
}
