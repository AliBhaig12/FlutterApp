import 'package:designapp/pages/login/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   void login(String email, String password) async {
    print('email: $email, password: $password');
    if(_formKey.currentState!.validate()){
       print("validate is done");
      //  await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    }
    resetFields();
   }
   void resetFields (){
    EmailController.clear();
    PasswordController.clear();
   }

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
 final  _formKey = GlobalKey<FormState>();
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
                  'LOG IN',
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
                  controller: EmailController,
                  validator: (Text){
                    if(Text==null || Text.trim().isEmpty){
                      return "email is empty";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16 , bottom: 19),
                child: TextFormField(
                  controller: PasswordController,
                    validator: (Text){
                    if(Text==null || Text.trim().isEmpty){
                      return "password is empty";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password',
                  ),
                ),
              ),
              GestureDetector(
             onTap: () {
                    login(EmailController.text, PasswordController.text);
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
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600 , color: Colors.white),
                  ),
                ),
              ),
                    GestureDetector(
               onTap: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
                  },
              child: Padding(
                padding: EdgeInsets.only(top: 10.0), // Add the desired padding value
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
            color: Colors.black, // Set the color of the border
            width: 1.0,         // Set the width of the border
                    ),
                  ),
                  child: Text(
                    'sign up'
                  ),
                ),
              ),
            )
            ],
                    ),
                  ),
          )),
    );
  }
}
