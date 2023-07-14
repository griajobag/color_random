import 'dart:math';

import 'package:color_random/constans_data.dart';
import 'package:flutter/material.dart';

/// this is the page that we will create our logic to random some colors
class DashboardPage extends StatefulWidget {
  /// this is the contruction, but we don't pass anything
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  /// set color yellow as initial color
  Color? _colorSelected = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: InkWell(
        onTap: _getRandomColor,
        child: Container(
          color: _colorSelected,
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please tap outside of the text!'),
                ),
              );
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: widthBorder),
                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Hello There! Currently I'm using color code "
                  "#${_colorSelected?.value.toRadixString(radixStringValue)}",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _getRandomColor() {
    final random = Random();
    final colorGenerated = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    setState(() {
      _colorSelected = colorGenerated;
    });
  }
}
