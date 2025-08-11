import 'package:flutter/material.dart';

class ColorGridScreen extends StatefulWidget {
  const ColorGridScreen({super.key});

  @override
  State<ColorGridScreen> createState() => _ColorGridScreenState();
}

class _ColorGridScreenState extends State<ColorGridScreen> {
  List color = [
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.white,
    Colors.pink,
    Colors.black,
    Colors.grey,
    Colors.cyanAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              // itemCount: 10,
              itemBuilder:
                  (context, index) => Container(
                    color: color[index % 10],
                    child: Center(
                      child: Text('$index', style: TextStyle(fontSize: 40)),
                    ),
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
