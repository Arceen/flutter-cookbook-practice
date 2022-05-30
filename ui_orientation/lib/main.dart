import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Builder'),
      ),
      body: GridView.count(
        // primary: true,
        // scrollDirection: Axis.horizontal,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.green),
          Container(height: 100, width: 100, color: Colors.yellow),
          Container(height: 100, width: 100, color: Colors.orange),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.purple),
          Container(height: 100, width: 100, color: Colors.green),
          Container(height: 100, width: 100, color: Colors.yellow),
          Container(height: 100, width: 100, color: Colors.orange),
          Container(height: 100, width: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
