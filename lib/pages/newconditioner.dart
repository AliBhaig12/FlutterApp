import 'package:flutter/material.dart';

class NewConditioner extends StatelessWidget {
  const NewConditioner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar:AppBar(
          backgroundColor: Colors.purple,
          title: Title(color: Colors.black, child: Text('New Air-Conditioner' , style: TextStyle(color: Colors.white))),
          centerTitle: true,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}