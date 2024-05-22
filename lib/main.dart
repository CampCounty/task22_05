import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Zählerstand

  @override
  void initState() {
    super.initState();
    print('initState() aufgerufen');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose() aufgerufen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Aktuelle Zahl: $_counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  _counter += 2;
                });
              },
              child: Text('Zähler erhöhen'),
            ),
          ],
        ),
      ),
    );
  }
}
