import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;

  const CustomFlatButton(
      {Key? key,
      required this.text,
      this.color = Colors.pink,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: color),
        onPressed: () => onPress(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ));
  }
}
