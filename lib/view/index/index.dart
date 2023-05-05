import 'package:flutter/material.dart';
import 'package:portfolio/view/index/website_view.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebsiteView(),
    );
  }


}
