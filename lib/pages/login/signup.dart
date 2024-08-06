import 'package:designapp/pages/login/login.dart';
import 'package:designapp/pages/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void signUp(String email, String password) async {
    try {
      // await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //   email: email,
      //   password: password,
      // );
      Fluttertoast.showToast(
          msg: "Sign Up Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
      resetFields();
    } catch (e) {
      print('Sign up failed: $e');
    }
  }

  void resetFields() {
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  String? validateEmail(String? text) {
    if (text == null || text.trim().isEmpty) {
      return 'Email is empty';
    }
    return null;
  }

  String? validatePassword(String? text) {
    if (text == null || text.trim().isEmpty) {
      return 'Password is empty';
    }
    return null;
  }

  String? validateConfirmPassword(String? text) {
    if (text == null || text.trim().isEmpty) {
      return 'Confirm Password is empty';
    }
    if (text != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: emailController,
                    validator: validateEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    validator: validatePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    validator: validateConfirmPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      signUp(emailController.text, passwordController.text);
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0), // Add the desired padding value
                    child: Container(
                      width: 300,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black, // Set the color of the border
                          width: 1.0, // Set the width of the border
                        ),
                      ),
                      child: Text('Log In'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
