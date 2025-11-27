import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),

              // Integrating the Loop Directly into the List

              Text("Start"),
              for (var c in colors) Text(c),
              Text("End"),

              SizedBox(height: 20),
              Label("Method 2: Map", bold: true),
              // Using map()
              Text("Start"),
              ...colors.map((c) => Text(c)),
              Text("End"),

              SizedBox(height: 20),
              Label("Method 3: Dedicated Function", bold: true),
              // Using a dedicated function
              Text("Start"),
              ...generateColorWidgets(),
              Text("End"),
            ],
          ),
        ),
      ),
    ),
  );
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}

// Dedicated function for Method 3
List<Widget> generateColorWidgets() {
  return colors.map((c) => Text(c)).toList();
}
