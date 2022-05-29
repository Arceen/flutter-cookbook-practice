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
        title: const Text('My App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              behavior: SnackBarBehavior.floating,
              dismissDirection: DismissDirection.horizontal,
              elevation: 2,
              width: 100,
              content: const Text(
                "You are da best",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              action: SnackBarAction(
                label: "Undo",
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
            "somehow",
          ),
        ),
      ),
    );
  }
}
