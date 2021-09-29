import 'package:bottom_button_layout_example/widgets/add_button.dart';
import 'package:bottom_button_layout_example/widgets/number_card.dart';
import 'package:flutter/material.dart';

class CustomScrollViewFillPage extends StatefulWidget {
  @override
  _CustomScrollViewFillPageState createState() => _CustomScrollViewFillPageState();
}

class _CustomScrollViewFillPageState extends State<CustomScrollViewFillPage> {
  int nextCardValue = 1;
  List<int> cardValues = [];
  void increment() => setState(() => cardValues.add(nextCardValue++));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView + Fill'),
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
            fillOverscroll: true,
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
