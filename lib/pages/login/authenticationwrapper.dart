// import 'package:designapp/pages/login/login.dart';
// import 'package:designapp/pages/mainpage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// class AuthenticationWrapper extends StatefulWidget {
//   const AuthenticationWrapper({super.key});

//   @override
//   State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
// }

// class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder:(BuildContext context , AsyncSnapshot<User?> snapshot){
       
  
      
//       if (snapshot.connectionState == ConnectionState.waiting){
//         return const CircularProgressIndicator();
//       } else {
//         if(snapshot.hasData){
//           return const MainPage();
//         }else{
//           return const LoginScreen();
//         }
//       }
//       }
//         )
//            );
//   }
// }