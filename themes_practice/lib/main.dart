import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(
      splashColor: Colors.yellow,
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      fontFamily: 'Gerogia',
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.red, fontSize: 28.0),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Themes'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'I love you!',
              style: Theme.of(context).textTheme.headline1,
              overflow: TextOverflow.ellipsis,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.red,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.cabin),
              ),
            ),
            Theme(
              // Find and extend the parent theme using `copyWith`. See the next
              // section for more info on `Theme.of`.
              data: Theme.of(context).copyWith(splashColor: Colors.yellow),
              child: const FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
