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
              SizedBox(
                height: 8,
              ),
              DropdownButton(
                isExpanded: true,
                value: "Fahrenheit",
                items: [
                  DropdownMenuItem(
                    child: Text('Kelvin'),
                    value: 'Kelvin',
                  ),
                  DropdownMenuItem(
                    child: Text('Fahrenheit'),
                    value: 'Fahrenheit',
                  ),
                  DropdownMenuItem(
                    child: Text('Reamur'),
                    value: 'Reamur',
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
