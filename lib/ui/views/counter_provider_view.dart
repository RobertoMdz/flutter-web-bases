import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: _CounterProviderScaffoldBody());
  }
}

class _CounterProviderScaffoldBody extends StatelessWidget {
  const _CounterProviderScaffoldBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Provider counter',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        FittedBox(
          child: Text(
            'Contador: ${counterProvider.counter}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        CustomFlatButton(
            text: 'Incrementar',
            color: Colors.green,
            onPress: () => counterProvider.increment()),
        CustomFlatButton(
          text: 'Decrementar',
          color: Colors.red,
          onPress: () => counterProvider.decrement(),
        ),
      ],
    );
  }
}
