import 'package:flutter/material.dart';


final navigatorKey = GlobalKey<NavigatorState>();

void goTo(Widget page) {
  Navigator.push(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
