import "package:flutter/material.dart";

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(color: Colors.red),
          primaryColor: Colors.orange,
          secondaryHeaderColor: Colors.red),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: const Center(
                child: Text('Tabs'),
              ),
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.abc),
                  child: Text('Alphabet'),
                ),
                Tab(
                  icon: Icon(Icons.add),
                  child: Text('Add'),
                ),
                Tab(
                  icon: Icon(Icons.ac_unit),
                  child: Text('AC'),
                ),
              ])),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  'Learn some Alphabet',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Center(
                child: Text(
                  'Add some alphabet',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Center(
                child: Text(
                  'Add an AC Unit',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
