import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    return const Center(
      child: Text('Coming Soon'),
    );
  }
}
