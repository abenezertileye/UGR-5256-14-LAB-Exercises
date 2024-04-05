import 'package:flutter/material.dart';

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
          title: Text('Order Details'),
        ),
        backgroundColor: const Color.fromARGB(255, 227, 225, 225),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.green[100]),
                            child: ListTile(
                              leading: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              title: Text(
                                'completed',
                                style: TextStyle(color: Colors.green),
                              ),
                              subtitle: Text('dfghjk'),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('order id'), Text('643836')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('order date'), Text('643836')],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'asset/flowers.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('643836')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'asset/flowers.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text('643836')
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping information',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('jacob')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Phone number',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('0934893734267')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('husfere9ej39')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Shippement',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('economy')
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payement information',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('Cash on delivery')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
