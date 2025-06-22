import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  final List<Map<String, dynamic>> persons = [
    {"name": "Didddys", "age": 69, "image": "assets/images/img1.jpg"},
    {"name": "Saddam hussian", "age": 42, "image": "assets/images/img2.webp"},
    {"name": "Alice", "age": 25, "image": "assets/images/img.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person List'),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          final person = persons[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                title: Text(person["name"]),
                subtitle: Text("Age: ${person["age"]}"),
                trailing: Container(
                  width: 69,
                  height: 69,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(person["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
