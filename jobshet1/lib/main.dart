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
  List<String> listSatuanSuhu = ["Kelvin", "Fahrenheit", "Reamur"];
  String selectedDrowpdown = "Kelvin";
  int hasilPerhitungan = 0;

  void onDropdownChanged(Object? value) {
    return setState(() {
      selectedDrowpdown = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widget',
      theme: ThemeData(),
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
                keyboardType: TextInputType.number,
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
                value: selectedDrowpdown,
                items: listSatuanSuhu.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  onDropdownChanged(value);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hasil",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "$hasilPerhitungan",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (etInput.text.isNotEmpty) {
                                hasilPerhitungan = int.parse(etInput.text) * 1;
                                switch (selectedDrowpdown) {
                                  case "Kelvin":
                                    hasilPerhitungan =
                                        int.parse(etInput.text) * 2;
                                    break;
                                  case "Reamur":
                                    hasilPerhitungan =
                                        int.parse(etInput.text) * 4;
                                    break;
                                  case "Fahrenheit":
                                    hasilPerhitungan =
                                        int.parse(etInput.text) * 9;
                                    break;
                                  default:
                                }
                              }
                            });
                          },
                          child: Text("Konversi Suhu"))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Riwayat Konversi",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
