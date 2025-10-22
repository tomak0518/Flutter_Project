import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SearchBar(
        hintText: 'Search something...',
        leading: const Icon(Icons.search),
        trailing: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              print("Search Clicked!");
            },
          ),
        ],
      ),
    );
  }
}