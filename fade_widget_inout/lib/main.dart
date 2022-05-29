import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _visible = !_visible);
        },
        tooltip: 'Toogle Opacity',
        child: const Icon(Icons.flip),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _visible ? 1 : 0,
          child: Container(
            height: 200.0,
            width: 200.0,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
