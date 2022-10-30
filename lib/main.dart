import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choice Chip',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choice Chip'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Choice(
              label: 'Choice 1',
            ),
            Choice(
              label: 'Choice 2',
            ),
            Choice(
              label: 'Choice 3',
            ),
          ],
        ),
      ),
    );
  }
}

class Choice extends StatefulWidget {
  const Choice({super.key, required this.label});

  final String label;

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(widget.label),
      selected: _selected,
      selectedColor: Colors.orange,
      onSelected: (value) {
        setState(() {
          _selected = value;
        });
      },
    );
  }
}
