import 'package:flutter/material.dart';

class CounterFABs extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterFABs({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onDecrement,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: onIncrement,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}