import 'package:flutter/material.dart';
import 'package:portfolio/view/global/logo/logo.dart';
import 'package:portfolio/view/global/social_media_center/social_media_center.dart';
import 'package:portfolio/viewmodel/global/navbar/bloc_navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ASSIGNING CONTEXT
    blocNavBar.viewModel.context = context;
    return Scaffold(
            body: _body(context),
          );
  }

  Widget _body(BuildContext context) {
    return StreamBuilder<Object>(
        stream: blocNavBar.stateStream,
        builder: (context, snapshot) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff000000),
                      Color(0xff101010),
                      // Color(0xff28161C),
                    ])),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(height: 32.0),
                // _screens(),
                const SocialMediaCenter(),
              ],
            ),
          );
        });
  }



  _screens() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            blocNavBar.eventSink.add(EnumsNavBar.selectHome);
          },
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              color:
                  blocNavBar.viewModel.selectedScreen == EnumsNavBar.selectHome
                      ? Colors.yellow
                      : Colors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            blocNavBar.eventSink.add(EnumsNavBar.selectProjects);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Projects',
              style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: blocNavBar.viewModel.selectedScreen ==
                        EnumsNavBar.selectProjects
                    ? Colors.yellow
                    : Colors.white,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            blocNavBar.eventSink.add(EnumsNavBar.selectAbout);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 24.0),
            child: Text(
              'About',
              style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: blocNavBar.viewModel.selectedScreen ==
                        EnumsNavBar.selectAbout
                    ? Colors.yellow
                    : Colors.white,
              ),
            ),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     blocNavBar.eventSink.add(EnumsNavBar.selectContact);
        //   },
        //   child: Container(
        //     margin: const EdgeInsets.only(left: 24.0, right: 64.0),
        //     child: Text(
        //       'Contact',
        //       style: TextStyle(
        //         fontSize: 14.0,
        //         letterSpacing: 1.5,
        //         fontWeight: FontWeight.bold,
        //         color: blocNavBar.viewModel.selectedScreen == EnumsNavBar.selectContact ? Colors.yellow : Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

}
