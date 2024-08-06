
import 'package:flutter/material.dart';

class Conditioner extends StatefulWidget {
  const Conditioner({super.key});

  @override
  State<Conditioner> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Conditioner> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar:AppBar(
          backgroundColor: Colors.purple,
          title: Title(color: Colors.black, child: Text('Conditioner' , style: TextStyle(color: Colors.white))),
          centerTitle: true,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}