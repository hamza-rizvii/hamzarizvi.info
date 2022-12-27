import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/viewmodel/about/vm_about_screen.dart';

enum EventsAboutScreen {
  update,
  animate,
}

class BlocAboutScreen {
  late ViewModelAboutScreen viewModel;

  final stateController = StreamController<Object>();

  StreamSink<Object> get stateSink => stateController.sink;

  Stream<Object> get stateStream => stateController.stream;

  final eventController = StreamController<EventsAboutScreen>();

  StreamSink<EventsAboutScreen> get eventSink => eventController.sink;

  BlocAboutScreen({required BuildContext context}) {
    viewModel = ViewModelAboutScreen(context: context);
    eventController.stream.listen((event) {
      switch (event) {
        case EventsAboutScreen.update:
          _update();
          break;
        case EventsAboutScreen.animate:
          _animate(context);
          break;
      }
    });
  }

  _update() => stateSink.add(Object);

  _animate(context) {
    viewModel.height = MediaQuery.of(context).size.height;
    viewModel.width = MediaQuery.of(context).size.width;
    _update();
  }
}
