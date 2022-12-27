import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:portfolio/viewmodel/index/vm_index_screen.dart';

enum EventsIndexScreen {
  update,
}

class BlocIndexScreen {
  late ViewModelIndexScreen viewModel;

  final stateController = StreamController<Object>();

  StreamSink<Object> get stateSink => stateController.sink;

  Stream<Object> get stateStream => stateController.stream;

  final eventController = StreamController<EventsIndexScreen>();

  StreamSink<EventsIndexScreen> get eventSink => eventController.sink;

  BlocIndexScreen(BuildContext context) {
    viewModel = ViewModelIndexScreen(context: context);
    eventController.stream.listen((event) {
      switch (event) {
        case EventsIndexScreen.update:
          stateSink.add(Object);
          break;
      }
    });
  }
}
