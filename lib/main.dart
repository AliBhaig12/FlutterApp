import 'package:designapp/modal/countermodal.dart';
import 'package:designapp/pages/login/authenticationwrapper.dart';
import 'package:designapp/pages/login/login.dart';
import 'package:designapp/pages/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();

  runApp(

    ChangeNotifierProvider(
      create: (context) => CounterModal(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MainPage(),
    );
  }
}
