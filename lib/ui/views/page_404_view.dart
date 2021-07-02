import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404View extends StatelessWidget {
  const Page404View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pagina 404'),
          CustomFlatButton(
            text: 'Regresar',
            onPress: () => Navigator.pushNamed(context, '/stateful'),
          )
        ],
      ),
    );
  }
}
