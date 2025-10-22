import 'package:flutter/material.dart';

class Header extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:20, right: 20, top:20, bottom: 20),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(12.0),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.1),
      //       spreadRadius: 2,
      //       blurRadius: 8,
      //       offset: const Offset(0, 2),
      //     ),
      //   ],
      // ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    children: [
                      const TextSpan(text: 'Hi, '),
                      TextSpan(text: "David"),
                      const TextSpan(text: ' 👋'),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Explorer the world",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 24,
            backgroundImage: const AssetImage('assets/avatar.jpg') as ImageProvider,
            backgroundColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}