import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendship_breaker/services/firebase_service.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendship Breaker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'İsim'
              ),
            ),
            ElevatedButton(
              child: Text('Oda Kur'),
              onPressed: () async {
                String roomName = await FirebaseService.createRoom();
                print(roomName);
              },
            ),
            ElevatedButton(
              child: Text('Odaya Katıl'),
              onPressed: () {

              },
            )
          ],
        ),
      ),
    );
  }
}