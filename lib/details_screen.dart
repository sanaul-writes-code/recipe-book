import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(recipe['details']!),
      ),
    );
  }
}
