import 'package:bottom_button_layout_example/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(brightness: Brightness.dark),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
