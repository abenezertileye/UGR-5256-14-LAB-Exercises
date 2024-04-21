import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends ChangeNotifier {
  int count = 0;

  void increment() {
    count = count + 1;
    notifyListeners();
  }

  void decrement() {
    count = count - 1;
    notifyListeners();
  }
}

void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, count, child) {
                return Text(
                  '${count.count}',
                );
              },
            ),
            FloatingActionButton(
              onPressed: Provider.of<Counter>(context, listen: false).increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: Provider.of<Counter>(context, listen: false).decrement,
              tooltip: 'Decrement',
              child: Text('-'),
            ),
          ],
        ),
      ),
    );
  }
}
