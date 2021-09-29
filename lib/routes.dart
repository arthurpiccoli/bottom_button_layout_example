import 'package:bottom_button_layout_example/pages/column_list_view_page.dart';
import 'package:bottom_button_layout_example/pages/column_page.dart';
import 'package:bottom_button_layout_example/pages/custom_scroll_view_fill_page.dart';
import 'package:bottom_button_layout_example/pages/custom_scroll_view_page.dart';
import 'package:bottom_button_layout_example/pages/home_page.dart';
import 'package:bottom_button_layout_example/pages/list_view_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => HomePage(),
        );
      case '/column':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ColumnPage(),
        );
      case '/list-view':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ListViewPage(),
        );
      case '/column-list-view':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ColumnListViewPage(),
        );
      case '/custom-scroll-view':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => CustomScrollViewPage(),
        );
      case '/custom-scroll-view-fill':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => CustomScrollViewFillPage(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => HomePage(),
        );
    }
  }
}
