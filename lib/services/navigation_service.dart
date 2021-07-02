import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routerName) {
    return navigatorKey.currentState!.pushNamed(routerName);
  }

  void goBack() {
    navigatorKey.currentState!.pop();
  }
}
