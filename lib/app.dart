import 'package:flutter/material.dart';
import 'pages/hompage.dart';
import 'pages/details.dart';

class App extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Homepage(),
          '/details': (context) => Details(),
        }
      )
    );
  }
}