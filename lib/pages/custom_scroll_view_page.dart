import 'package:bottom_button_layout_example/widgets/add_button.dart';
import 'package:bottom_button_layout_example/widgets/number_card.dart';
import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatefulWidget {
  @override
  _CustomScrollViewPageState createState() => _CustomScrollViewPageState();
}

class _CustomScrollViewPageState extends State<CustomScrollViewPage> {
  int nextCardValue = 1;
  List<int> cardValues = [];
  void increment() => setState(() => cardValues.add(nextCardValue++));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              cardValues.map((e) => NumberCard(number: e)).toList(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AddButton(onPressed: increment),
            ),
          ),
        ],
      ),
    );
  }
}
