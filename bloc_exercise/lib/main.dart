import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvents {}

class NumberIncreaseEvent extends CounterEvents {}

class NumberDecreaseEvent extends CounterEvents {}

class CounterBloc extends Bloc<CounterEvents, int> {
  int counter = 0;
  CounterBloc() : super(0) {
    on<NumberIncreaseEvent>((event, emit) => emit(state + 1));
    on<NumberDecreaseEvent>((event, emit) => emit(state - 1));
  }
}

void onNumberIncrease(counter) {
  counter = counter + 1;
}

void onNumberDecrease(counter) {
  counter = counter - 1;
}

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          home: MyHomePage(),
        ));
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
            BlocBuilder<CounterBloc, int>(builder: (context, state) {
              return Text('$state');
            }),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(NumberIncreaseEvent());
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(NumberDecreaseEvent());
              },
              tooltip: 'Decrement',
              child: Text('-'),
            ),
          ],
        ),
      ),
    );
  }
}
