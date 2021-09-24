import 'package:flutter/material.dart';
import 'package:friendship_breaker/screens/first_screen.dart';
import 'package:friendship_breaker/services/firebase_service.dart';

Future<void> main() async {
  await FirebaseService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendship Breaker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}
