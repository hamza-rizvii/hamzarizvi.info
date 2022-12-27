import 'package:flutter/material.dart';
import 'package:portfolio/viewmodel/about/bloc_about_screen.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key}) : super(key: key);

  late BlocAboutScreen bloc;
  @override
  Widget build(BuildContext context) {
    bloc = BlocAboutScreen(context: context);
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    bloc.eventSink.add(EventsAboutScreen.animate);
    return  StreamBuilder<Object>(
      stream: bloc.stateStream,
      builder: (context, snapshot) {
        return AnimatedContainer(
          width: bloc.viewModel.width,
          height: bloc.viewModel.height,
         // color: Colors.red,
          curve: Curves.ease,
          duration: const Duration(milliseconds: 800),
          child: const Center(
            child: Text('Coming Soon'),
          ),
        );
      }
    );
  }
}
