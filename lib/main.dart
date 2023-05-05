import 'package:flutter/material.dart';
import 'package:portfolio/view/index/index.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamza Ghulam Nabi',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff202020, <int, Color>{
          50: Color(0xff202020),
          100: Color(0xff202020),
          200: Color(0xff202020),
          300: Color(0xff202020),
          400: Color(0xff202020),
          500: Color(0xff202020),
          600: Color(0xff202020),
          700: Color(0xff202020),
          800: Color(0xff202020),
          900: Color(0xff202020),
        }),
      ),
      home: kIsWeb ? const IndexScreen() : const Center(child: Text('Currently Not Supported On Mobile.',),),
    );
  }
}
