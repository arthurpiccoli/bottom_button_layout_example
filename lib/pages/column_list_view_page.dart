import 'package:bottom_button_layout_example/widgets/add_button.dart';
import 'package:bottom_button_layout_example/widgets/number_card.dart';
import 'package:flutter/material.dart';

class ColumnListViewPage extends StatefulWidget {
  @override
  _ColumnListViewPageState createState() => _ColumnListViewPageState();
}

class _ColumnListViewPageState extends State<ColumnListViewPage> {
  int nextCardValue = 1;
  List<int> cardValues = [];
  void increment() => setState(() => cardValues.add(nextCardValue++));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column + ListView'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: cardValues.map((e) => NumberCard(number: e)).toList(),
            ),
          ),
          AddButton(onPressed: increment),
        ],
      ),
    );
  }
}
