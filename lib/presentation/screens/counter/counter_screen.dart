import 'package:tarea_1/presentation/screens/counter/counter_body.dart';
import 'package:tarea_1/presentation/screens/counter/counter_fabs.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  void _resetCounter() {
    setState(() {
      clickCounter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      clickCounter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      clickCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
        leading: IconButton(
          onPressed: _resetCounter,
          icon: const Icon(Icons.refresh_rounded),
        ),
      ),
      body: CounterBody(clickCounter: clickCounter),
      floatingActionButton: CounterFABs(
        onIncrement: _incrementCounter,
        onDecrement: _decrementCounter,
      ),
    );
  }
}

