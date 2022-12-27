import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    return Column(
      children: [
        _poster(),
      ],
    );
  }

  _poster() {
    return const Center(
      child: Text('Coming Soon'),
    );
  }
}
