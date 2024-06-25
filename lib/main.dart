import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click Me';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Test App'),
            backgroundColor: const Color(0xCE766060)),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'Button Clicked';
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'Button Clicked';
                  });
                },
                child: Text(buttonName),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Setting',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
