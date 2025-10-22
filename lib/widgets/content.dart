import 'package:flutter/material.dart';
import './tab1.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular places',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),

          // Tab Controller Section
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "MostView"),
                    Tab(text: "Nearby"),
                    Tab(text: "Latest"),
                  ],
                ),

                // 👇 Give height to TabBarView
                SizedBox(
                  height: 500, // or any value that fits your layout
                  child: TabBarView(
                    children: [
                      Tab1(),
                      const Center(child: Text("Second Tab")),
                      const Center(child: Text("Third Tab")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}