import 'package:flutter/material.dart';

// shortcut -> stles
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  // Center(child: Text('Counter Screen'))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
          style: TextStyle(color: Colors.pinkAccent),
        ),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', // si el valor no es estatico remover el const
                style: const TextStyle(
                    fontSize: 160,
                    fontWeight: FontWeight.w100,
                    color: Colors.white70)),
            Text('Click${clickCounter == 1 ? '': 's'}', style: const TextStyle(fontSize: 25, color: Colors.white70))
            // podemos hacer uso de if pero no else
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter += 1; // cambia el valor mas no se renderiza en tiempo real
          setState(() {}); // renderiza el widget
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
