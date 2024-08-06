import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //    backgroundColor: Colors.purple,
        //    iconTheme: IconThemeData(color: Colors.white , size: 28),
        //   title: Text('Profile Data' , style: TextStyle(color: Colors.white)), // Title for the AppBar
        //   centerTitle: true, // Center align the title
        //   leading: IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back))
          

        // ),
      body: Align(
  child: Container(
    width: 200, // set your desired width
    height: 100, // set your desired height
    child: Card(
      color: Color.fromARGB(255, 244, 190, 255),
      child: Center(child: Text('Profile page data  ')),
    ),
  ),
),
        
      ),
    );
  }
}