import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;
  void birdikosh() {
    san++;
    setState(() {});
  }

  void birdikemit() {
    san--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Flutter 2-сабак',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            '$san',
            style: TextStyle(fontSize: 70),
          ),
          ElevatedButton.icon(
              onPressed: birdikosh,
              icon: Icon(Icons.add),
              label: Text('incrememt')),
          ElevatedButton.icon(
            onPressed: birdikemit,
            icon: Icon(Icons.remove),
            label: Text('Decerement'),
          )
        ],
      )),
    );
  }
}
