import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;

  const Details({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity, height: 300),
          const SizedBox(height: 16),
          Text(
            location,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text('$rating', style: const TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}