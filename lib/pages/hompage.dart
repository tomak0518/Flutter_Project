import 'package:flutter/material.dart';
import '../widgets/header.dart';
import 'firstpage.dart';

class Homepage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Header()),
          body: TabBarView(
              children: [
                FirstPage(),
                const Text("Second"),
                const Text("Third"),
                const Text("Forth")
              ]),
        bottomNavigationBar: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.explore)),
              Tab(icon: Icon(Icons.heart_broken_outlined)),
              Tab(icon: Icon(Icons.person)),
            ])
        )
    );
  }
}