// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:testrfw/testRfw.dart';
import 'package:testrfw/testRfw1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return const Example();
            }
          ),
        ),
      ),
    );
  }
}
