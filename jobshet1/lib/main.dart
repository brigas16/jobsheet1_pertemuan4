import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  final etInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widget',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('widget.title'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                controller: etInput,
                decoration: InputDecoration(
                  labelText: 'Celcius',
                  hintText: 'Enter the temperature in celcius',
                ),
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text('Celcius'),
                    value: 'Celcius',
                  ),
                  DropdownMenuItem(
                    child: Text('Fahrenheit'),
                    value: 'Fahrenheit',
                  ),
                ],
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
