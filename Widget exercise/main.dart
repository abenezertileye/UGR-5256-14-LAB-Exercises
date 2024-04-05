import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'practice', home: MyHomePage(title: 'flutter demo'));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ijTracker', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('hi'),
                // CircleAvatar(child: Image.asset('asset.flowers.png')),
                Column(
                  children: [
                    Text('Robert Steven'),
                    Row(
                      children: [
                        Icon(Icons.directions_car),
                        Container(child: Text('763253 | 623'))
                      ],
                    ),
                  ],
                ),
                Text('Log Out')
              ],
            ),
            Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Online | Battery : 90 %',
                  style: TextStyle(color: Colors.white),
                )),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 500, maxHeight: 500),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 213, 212, 212)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.blue,
                        ),
                        Text('Map all devices')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
