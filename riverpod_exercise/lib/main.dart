import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

final countProvider = StateProvider<int>((ref) => 0);

void main() {
  return runApp(ProviderScope(child: MyApp()));
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

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(countProvider);
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
            Text(
              '$counter',
            ),
            FloatingActionButton(
              onPressed: () => ref.read(countProvider.notifier).state++,
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => ref.read(countProvider.notifier).state--,
              tooltip: 'Decrement',
              child: Text('-'),
            ),
          ],
        ),
      ),
    );
  }
}
