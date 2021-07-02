import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Statefull counter',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        FittedBox(
          child: Text(
            'Contador: $counter',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        CustomFlatButton(
          text: 'Incrementar',
          color: Colors.green,
          onPress: () {
            setState(() {
              counter++;
            });
          },
        ),
        CustomFlatButton(
          text: 'Decrementar',
          color: Colors.red,
          onPress: () {
            setState(() {
              counter--;
            });
          },
        ),
      ],
    );
  }
}
