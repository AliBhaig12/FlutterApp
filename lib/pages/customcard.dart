import 'package:flutter/material.dart';

class Customcard extends StatefulWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onTap;



  const Customcard({super.key, required this.text , required this.imagePath, required this.onTap});

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
  onTap: widget.onTap,
child: Card(
     color: Color.fromARGB(255, 244, 190, 255),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
      
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imagePath ,  width: 100 , height: 100),
            Text(widget.text),
          ],
        ),
      ),
    ),
    );
  }
}
