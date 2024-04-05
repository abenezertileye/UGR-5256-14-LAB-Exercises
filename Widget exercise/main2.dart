import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          title: Text('second', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                )),
                Icon(Icons.shopping_cart),
                Icon(Icons.notification_add)
              ],
            ),
            Expanded(child: Image.asset('assets/flowers.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('8.6'),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                )
              ],
            ),
            Text(
                'kkljsakjkldskljdfskljdkjldfskjldkljdfsakjldkjldskdskldsdsklkdfsjdflkjldfsak'),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(
                      '5.0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('(354)    |'),
                    Text('  (354)    |'),
                    Icon(Icons.location_city),
                    Text('brooklyn')
                  ],
                ),
              ],
            ),
            Text(
              'variant',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                Text('size:', style: TextStyle(color: Colors.grey)),
                Text('XS', style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(children: [
              Text('color:', style: TextStyle(color: Colors.grey)),
              Text('Red', style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(
                    'XS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.message),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: Row(
                    children: [
                      Text(
                        'add to shopping cart',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
