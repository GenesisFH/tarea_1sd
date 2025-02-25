import 'package:flutter/material.dart';

class CounterBody extends StatelessWidget {
  final int clickCounter;

  const CounterBody({super.key, required this.clickCounter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            (clickCounter == 1 ? 'Click' : 'Clicks'),	
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}