import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/search_bar.dart';
import '../widgets/content.dart';
import '../widgets/footer.dart';

class Homepage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Center(
        child: Text("Homepage"),
      ),
      bottomNavigationBar: Text("Bottom"),
    );
  }
}