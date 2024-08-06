import 'package:flutter/material.dart';

class Bulb extends StatelessWidget {
  const Bulb({super.key});

  @override
   build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Title(color: Colors.black, child: Text('Light_Bulb' , style: TextStyle(color: Colors.white))),
          centerTitle: true,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}