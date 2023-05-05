import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/viewmodel/index/projects_screen/vm_projects_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({Key? key}) : super(key: key);
  ViewModelProjectScreen viewModel = ViewModelProjectScreen();

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12.0),
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width * 0.7,
          child: const Text(
            'WORK',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                letterSpacing: 3.0,
                fontSize: 24.0),
          ),
        ),
        _previousWork(context),
      ],
    );
  }

  _previousWork(context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.all(12.0),
        width: MediaQuery.of(context).size.width * 0.7,
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: constraints.maxWidth > 480
                  ? MediaQuery.of(context).size.width * 0.1
                  : MediaQuery.of(context).size.width * 0.5,
              crossAxisSpacing: 24.0,
              mainAxisSpacing: 24.0,
              childAspectRatio: 1 / 1.5,
            ),
            itemCount: viewModel.projectNames.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () async {
                  if (await canLaunchUrl(
                      Uri.parse(viewModel.projectLinks[index]))) {
                    await launchUrl(Uri.parse(viewModel.projectLinks[index]));
                  } else {
                    await launchUrl(Uri.parse('https://www.google.com'));
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          image: NetworkImage(
                            viewModel.projectImages[index],
                          ),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 64.0,
                        width: 64.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  viewModel.projectIcons[index],
                                ),
                                fit: BoxFit.fill)),
                      ),
                      // Text(
                      //   viewModel.projectNames[index],
                      //   textAlign: TextAlign.center,
                      //   style: const TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 16.0,
                      //       fontWeight: FontWeight.w900,
                      //       letterSpacing: 2.0,
                      //       wordSpacing: 3.0),
                      // ),
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
