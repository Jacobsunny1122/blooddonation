import 'package:blooddonation/update.dart';
import 'package:flutter/material.dart';
import './Splash_Screen.dart';
import './add.dart';
import './update.dart';
import './about.dart';
import './firebase_options.dart';
import './Home_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );

  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/add': (context) => AddUser(),
        '/update':(context) => UpdateUser(),
        '/About':(context) => AboutCoder(),



      },
      initialRoute: '/',
    );
  }
}
