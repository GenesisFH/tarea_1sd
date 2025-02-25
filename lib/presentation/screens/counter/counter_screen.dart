import 'package:tarea_1/presentation/screens/counter/counter_view.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _clickCounter = 0;

  void _incrementCounter() {
    setState(() {
      _clickCounter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _clickCounter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _clickCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterView(
      clickCounter: _clickCounter,
      onIncrement: _incrementCounter,
      onDecrement: _decrementCounter,
      onReset: _resetCounter,
    );
  }
}