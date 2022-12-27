import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class ViewModelIndexScreen {
  BuildContext context;
  Color tabTextColor = Colors.grey;
  Color selectedTabTextColor = Utils().colorAccent;
  double tabTextSize = 14;
  int selectedTab = 0;

  ViewModelIndexScreen({required this.context});
}
