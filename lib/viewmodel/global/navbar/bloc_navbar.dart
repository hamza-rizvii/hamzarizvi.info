import 'dart:async';

import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/viewmodel/global/navbar/vm_navbar.dart';

enum EnumsNavBar {
  selectHome,
  selectProjects,
  selectAbout,
  selectContact,
}

class BlocNavBar {
  ViewModelNavBar viewModel = ViewModelNavBar();

  final stateController = StreamController<Object>.broadcast();

  StreamSink<Object> get stateSink => stateController.sink;

  Stream<Object> get stateStream => stateController.stream;

  final eventController = StreamController<Object>();

  StreamSink<Object> get eventSink => stateController.sink;

  Stream<Object> get eventStream => stateController.stream;

  BlocNavBar() {
    eventStream.listen((event) {
      switch (event) {
        case EnumsNavBar.selectHome:
          viewModel.selectedScreen = EnumsNavBar.selectHome;
          _update();
          break;
        case EnumsNavBar.selectProjects:
          viewModel.selectedScreen = EnumsNavBar.selectProjects;
          _update();
          break;
        case EnumsNavBar.selectAbout:
          viewModel.selectedScreen = EnumsNavBar.selectAbout;
          _update();
          break;
        case EnumsNavBar.selectContact:
          viewModel.selectedScreen = EnumsNavBar.selectContact;
          _update();
          break;
      }
    });
  }

  _update() {
    stateSink.add(Object);
  }
}

BlocNavBar blocNavBar = BlocNavBar();
