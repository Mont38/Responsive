import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Hola mundo'),
      ),
      body: Center(
          child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            'uwu',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Text(
            '$contador',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ads_click),
        onPressed: () {
          contador++;
          print(contador);
          setState(() {});
        },
      ),
    ));
  }
}