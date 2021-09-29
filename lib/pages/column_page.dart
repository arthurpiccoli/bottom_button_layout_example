import 'package:bottom_button_layout_example/widgets/add_button.dart';
import 'package:bottom_button_layout_example/widgets/number_card.dart';
import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  int nextCardValue = 1;
  List<int> cardValues = [];
  void increment() => setState(() => cardValues.add(nextCardValue++));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          ...cardValues.map((e) => NumberCard(number: e)),
          Spacer(),
          AddButton(onPressed: increment),
        ],
      ),
    );
  }
}
