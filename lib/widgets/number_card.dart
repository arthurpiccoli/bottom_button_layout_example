import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.grey[300],
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(height: 150),
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
