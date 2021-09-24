import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';

class FirebaseService {
  static FirebaseApp app;
  static DatabaseReference db;
  static Future<void> init () async {
    app = await Firebase.initializeApp();
    db = FirebaseDatabase(app: app).reference();
  }

  static Future<String> createRoom() async {
    String roomName = FirebaseService.generateRandomRoomName();
    return roomName;
  }

  static String generateRandomRoomName() {
    var r = Random();
    const _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    return List.generate(4, (index) => _chars[r.nextInt(_chars.length)]).join();
  }
}