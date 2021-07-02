import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/ui/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: (routeSettigns) =>
          Flurorouter.router.generator(routeSettigns),
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPge(child: child!);
      },
    );
  }
}
