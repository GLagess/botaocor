import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color backgroundColor = Colors.white;

  void changeColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mudando a Cor de Fundo'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => changeColor(Colors.blue),
                child: Text('Azul'),
              ),
              ElevatedButton(
                onPressed: () => changeColor(Colors.green),
                child: Text('Verde'),
              ),
              ElevatedButton(
                onPressed: () => changeColor(Colors.red),
                child: Text('Vermelho'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
