import 'package:flutter/material.dart';

class ButtonStopwatch extends StatelessWidget {
  final String text;
  final IconData icon;

  const ButtonStopwatch({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: TextStyle(
          fontSize: 25,
        )
      ),
      onPressed: (){},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(icon,
            size: 35,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}