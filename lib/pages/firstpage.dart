import 'package:flutter/material.dart';
import "../widgets/search_bar.dart";
import "../widgets/content.dart";

class FirstPage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return(
      Column(
        children: [
          SizedBox(height: 20),
          Search_bar(),
          Content(),
        ],
      )
    );
  }
}