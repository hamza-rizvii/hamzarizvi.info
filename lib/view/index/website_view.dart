import 'package:flutter/material.dart';
import 'package:portfolio/view/global/footer/footer.dart';
import 'package:portfolio/view/global/navbar/navbar.dart';
import 'package:portfolio/view/index/technologies/technologies.dart';
import 'package:portfolio/viewmodel/global/navbar/bloc_navbar.dart';

import 'about/about_screen.dart';
import 'projects/projects_screen.dart';

class WebsiteView extends StatelessWidget {
  const WebsiteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return StreamBuilder<Object>(
        stream: blocNavBar.stateStream,
        builder: (context, snapshot) {
          return Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff000000),
                  Color(0xff101010),
                  Color(0xff111111),
                  Color(0xff202020),
                  // Color(0xff28161C),
                ])),
            child: SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const NavBar(),
                  ),
                  const AboutScreen(),
                  const Technologies(),
                  ProjectsScreen(),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: constraints.maxWidth > 720 ? MediaQuery.of(context).size.height * 0.2 : MediaQuery.of(context).size.height * 0.5,
                        child: const Footer(),
                      );
                    }
                  ),
                ],
              ),
            ),
          );
        });
  }
//
// _screen(BuildContext context) {
//   switch (blocNavBar.viewModel.selectedScreen) {
//     case EnumsNavBar.selectHome:
//       return const HomeScreen();
//     case EnumsNavBar.selectProjects:
//       return ProjectsScreen();
//     case EnumsNavBar.selectAbout:
//       return const AboutScreen();
//     case EnumsNavBar.selectContact:
//     //   return ContactScreen();
//   }
// }
}
