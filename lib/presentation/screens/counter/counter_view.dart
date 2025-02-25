import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  final int clickCounter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onReset;

  const CounterView({
    super.key,
    required this.clickCounter,
    required this.onIncrement,
    required this.onDecrement,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: onReset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCounter == 1 ? "Click" : "Clicks",
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: onIncrement,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 22),
          FloatingActionButton(
            onPressed: onDecrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 22),
          FloatingActionButton(
            onPressed: onReset,
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}