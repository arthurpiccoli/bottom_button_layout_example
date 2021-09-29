import 'package:bottom_button_layout_example/widgets/add_button.dart';
import 'package:bottom_button_layout_example/widgets/number_card.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  int nextCardValue = 1;
  List<int> cardValues = [];
  void increment() => setState(() => cardValues.add(nextCardValue++));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: [
          ...cardValues.map((e) => NumberCard(number: e)),
          AddButton(onPressed: increment),
        ],
      ),
    );
  }
}
