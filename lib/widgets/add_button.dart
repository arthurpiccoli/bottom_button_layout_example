import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(height: 50),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text('ADD'),
        ),
      ),
    );
  }
}
