import 'package:designapp/pages/Bulb.dart';
import 'package:designapp/pages/conditioner.dart';
import 'package:designapp/pages/counterapp.dart';
import 'package:designapp/pages/customcard.dart';
import 'package:designapp/pages/newconditioner.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.purple,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   title: Text('HomePage' , style: TextStyle(color: Colors.white),),
        //   centerTitle: true,
        // ),
          body: Align(
              alignment: Alignment.topCenter,
             
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        width: double.infinity,
                        height: 90,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors
                                      .purple, // Change this to your desired border color
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors
                                      .purple, // Change this to your desired border color for enabled state
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors
                                      .purple, // Change this to your desired border color for focused state
                                ),
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.black)),
                        )),
                  ),
// grid view
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.all(20),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bulb()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 244, 190, 255),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/light-bulb.png',
                                      width: 100, height: 100),
                                  Text(
                                    'Light-Bulb',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ])),
                      ),

                     GestureDetector(
                       onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CounterApp()),
                          );
                        },
                      child:  Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 244, 190, 255)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/smart-tv.png',
                                    width: 100, height: 100),
                                Text(
                                  'Counter App',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ])),
                     ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 244, 190, 255),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/fan.png',
                                    width: 100, height: 100),
                                Text(
                                  'Fan',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ])),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conditioner()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 244, 190, 255),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/air-conditioner.png',
                                      width: 100, height: 100),
                                  Text(
                                    'Air-Conditioner',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ])),
                      ),
                      // Add some spacing between the container and the custom card
                      Customcard(
                        text: 'New Air conditioner',
                        imagePath: 'assets/air-conditioner.png',
                        onTap: () {
                          // Navigate to another screen here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewConditioner()),
                          );
                        },
                      ),
                      Customcard(
                        text: 'props here 2',
                        imagePath: 'assets/fan.png',
                        onTap: () {},
                      ),
                      Customcard(
                          text: 'props here 3',
                          imagePath: 'assets/light-bulb.png',
                          onTap: () {})
                    ],
                  ))
                ],
              )
),
      ),
    );
  }
}