import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Button Layout'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/column'),
              child: Text('COLUMN'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/list-view'),
              child: Text('LIST VIEW'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/column-list-view'),
              child: Text('COLUMN + LIST VIEW'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/custom-scroll-view'),
              child: Text('CUSTOM SCROLL VIEW'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/custom-scroll-view-fill'),
              child: Text('CUSTOM SCROLL VIEW + FILL'),
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
