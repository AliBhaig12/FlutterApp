import 'package:designapp/modal/countermodal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}


class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {

    return Consumer<CounterModal>(
      builder: (context, value, child) => Scaffold(
        
        // appBar: AppBar(
        //   backgroundColor: Colors.purple,
        //   title: Text('Counter App' , style: TextStyle(color: Colors.white),
        //   ),
        //   centerTitle: true,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   leading: IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back))
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                value.count.toString(),
                
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterModal>().increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
