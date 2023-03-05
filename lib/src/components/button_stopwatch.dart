import 'package:flutter/material.dart';

class ButtonStopwatch extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  const ButtonStopwatch(
      {Key? key, required this.text, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: const TextStyle(
            fontSize: 25,
          )),
      onPressed: onPressed,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
