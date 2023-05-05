import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double height = 24.0;

  Logo({required this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _logo();
  }

  _logo() {
    return Container(
      margin: const EdgeInsets.only(left: 24.0),
      child: Container(
        margin: const EdgeInsets.only(right: 18.0),
        child: Text(
          '卄ΛMZΛ',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.yellow,
              fontSize: height,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
