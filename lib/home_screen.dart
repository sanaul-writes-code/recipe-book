import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {'name': 'Vegetable Samosa', 'details': 'Stuff cone-shaped pastry with spiced mashed potatoes, peas, and carrots, seal the edges, then deep-fry until golden and crispy.'},
    {'name': 'Beef Curry', 'details': 'Simmer beef chunk with onions, garlic, ginger, tomatoes and a blend of spices like turmeric, coriander, cumin, chilli powder and garma masala.'},
    {'name': 'Mango Lassi', 'details': 'Blend ripe mango, plain yogurt, milk, sugar and a pinch of cardamom until smooth, then chill and serve for a creamy, refreshing Indian drink.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Delicious Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
