
import 'package:flutter/material.dart';

import 'pages/recipe_list/recipe_list_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reciperlich',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const RecipeListPage(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

