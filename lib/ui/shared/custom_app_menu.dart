import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:flutter/material.dart';

import 'custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              //onPress: () => Navigator.pushNamed(context, '/stateful')
              onPress: () =>
                  locator<NavigationService>().navigateTo('/stateful')),
          CustomFlatButton(
              text: 'Contador Provider',
              //onPress: () => Navigator.pushNamed(context, '/provider'),
              onPress: () =>
                  locator<NavigationService>().navigateTo('/provider')),
          CustomFlatButton(
            text: 'Otra pagina',
            //onPress: () => Navigator.pushNamed(context, '/ruta-no-existente'),
            onPress: () =>
                locator<NavigationService>().navigateTo('/ruta-no-existente'),
          ),
          CustomFlatButton(
            text: 'Stateful 100',
            //onPress: () => Navigator.pushNamed(context, '/ruta-no-existente'),
            onPress: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
          ),
          CustomFlatButton(
            text: 'Provider 200',
            //onPress: () => Navigator.pushNamed(context, '/ruta-no-existente'),
            onPress: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Column(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              //onPress: () => Navigator.pushNamed(context, '/stateful')
              onPress: () =>
                  locator<NavigationService>().navigateTo('/stateful')),
          CustomFlatButton(
              text: 'Contador Provider',
              //onPress: () => Navigator.pushNamed(context, '/provider'),
              onPress: () =>
                  locator<NavigationService>().navigateTo('/provider')),
          CustomFlatButton(
              text: 'Otra pagina',
              //onPress: () => Navigator.pushNamed(context, '/ruta-no-existente'),
              onPress: () => locator<NavigationService>()
                  .navigateTo('/ruta-no-existente')),
        ],
      ),
    );
  }
}
