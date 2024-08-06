import 'package:designapp/pages/cartpage.dart';
import 'package:designapp/pages/counterapp.dart';
import 'package:designapp/pages/homepage.dart';
import 'package:designapp/pages/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  int myIndex = 0;
  List<Widget> widgetList = const[
Homepage(),
ProfilePage(),
CounterApp()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            iconTheme: IconThemeData(color: Colors.white, size: 28),
            title: Text('First Page',
                style: TextStyle(color: Colors.white)), // Title for the AppBar
            centerTitle: true, // Center align the title
          ),
          
          drawer: Drawer(
            backgroundColor: Colors.purple,
            child: Column(
              children: [
                DrawerHeader(
                    child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                )),
                ListTile(
                  title: Text(
                    "H O M E",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "P R O F I L E",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              
                ListTile(
                  title: Text(
                    "C A R T  S E T T I N G S",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                ),
                  ListTile(
                  title: Text(
                    "LOG OUT",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ProfilePage()),
                    // );
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: (index){
              setState(() { 
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home" ,  backgroundColor: Colors.purple),
            BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined) , label: "Profile" , backgroundColor: Colors.purple),
            BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Settings" , backgroundColor: Colors.purple)
          
          
          ],),
          body: widgetList[myIndex],
//         
        ));
  }
}
