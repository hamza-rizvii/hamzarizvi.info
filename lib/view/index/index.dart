import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/view/Store/store_screen.dart';
import 'package:portfolio/view/about/about_screen.dart';
import 'package:portfolio/view/contact/contact_screen.dart';
import 'package:portfolio/view/gallery/gallery_screen.dart';
import 'package:portfolio/view/home/home_screen.dart';
import 'package:portfolio/viewmodel/index/bloc_index_screen.dart';

class Index extends StatelessWidget {
  Index({Key? key}) : super(key: key);
  late BlocIndexScreen bloc;

  @override
  Widget build(BuildContext context) {
    bloc = BlocIndexScreen(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(context),
        body: _body(context),
      ),
    );
  }

  _appBar(context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xfff8f8f8),
            Color(0xfff9f9f9),
            Color(0xffF6F5F3),
          ],
        )),
        child: StreamBuilder<Object>(
            stream: bloc.stateStream,
            builder: (context, snapshot) {
              return InkWell(
                onTap: (){
                  context.go('/about');
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: RichText(
                        text: const TextSpan(
                            text: '卄',
                            style: TextStyle(
                              fontSize: 46.0,
                              color: Colors.black54,
                            ),
                            children: [
                              TextSpan(
                                text: 'ΛMZΛ',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                              )
                            ]),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Color(0xfff8f8f8),
                            Color(0xfff9f9f9),
                            Color(0xffF6F5F3),
                          ],
                        )),
                        child: TabBar(
                            onTap: (index) {
                              bloc.viewModel.selectedTab = index;
                              bloc.eventSink.add(EventsIndexScreen.update);
                            },
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Tab(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "01 - ",
                                          style: TextStyle(
                                              color: bloc.viewModel
                                                          .selectedTab ==
                                                      0
                                                  ? bloc.viewModel
                                                      .selectedTabTextColor
                                                  : bloc.viewModel.tabTextColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900),
                                          children: [
                                    TextSpan(
                                      text: 'HOME',
                                      style: TextStyle(
                                        color: bloc.viewModel.selectedTab == 0
                                            ? bloc
                                                .viewModel.selectedTabTextColor
                                            : bloc.viewModel.tabTextColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ]))),
                              Tab(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "02 - ",
                                          onEnter: (e) {},
                                          style: TextStyle(
                                              color: bloc.viewModel
                                                          .selectedTab ==
                                                      1
                                                  ? bloc.viewModel
                                                      .selectedTabTextColor
                                                  : bloc.viewModel.tabTextColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900),
                                          children: [
                                    TextSpan(
                                      text: 'ΛBOUT',
                                      style: TextStyle(
                                        color: bloc.viewModel.selectedTab == 1
                                            ? bloc
                                                .viewModel.selectedTabTextColor
                                            : bloc.viewModel.tabTextColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ]))),
                              Tab(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "03 - ",
                                          onEnter: (e) {},
                                          style: TextStyle(
                                              color: bloc.viewModel
                                                          .selectedTab ==
                                                      2
                                                  ? bloc.viewModel
                                                      .selectedTabTextColor
                                                  : bloc.viewModel.tabTextColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900),
                                          children: [
                                    TextSpan(
                                      text: 'GΛLLERY',
                                      style: TextStyle(
                                        color: bloc.viewModel.selectedTab == 2
                                            ? bloc
                                                .viewModel.selectedTabTextColor
                                            : bloc.viewModel.tabTextColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ]))),
                              Tab(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "04 - ",
                                          onEnter: (e) {},
                                          style: TextStyle(
                                              color: bloc.viewModel
                                                          .selectedTab ==
                                                      3
                                                  ? bloc.viewModel
                                                      .selectedTabTextColor
                                                  : bloc.viewModel.tabTextColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900),
                                          children: [
                                    TextSpan(
                                      text: 'STORE',
                                      style: TextStyle(
                                        color: bloc.viewModel.selectedTab == 3
                                            ? bloc
                                                .viewModel.selectedTabTextColor
                                            : bloc.viewModel.tabTextColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ]))),
                              Tab(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "05 - ",
                                          onEnter: (e) {},
                                          style: TextStyle(
                                              color: bloc.viewModel
                                                          .selectedTab ==
                                                      4
                                                  ? bloc.viewModel
                                                      .selectedTabTextColor
                                                  : bloc.viewModel.tabTextColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900),
                                          children: [
                                    TextSpan(
                                      text: 'CONTΛCT',
                                      style: TextStyle(
                                        color: bloc.viewModel.selectedTab == 4
                                            ? bloc
                                                .viewModel.selectedTabTextColor
                                            : bloc.viewModel.tabTextColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ]))),
                            ]),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  _body(context) {
    return TabBarView(
      children: [
        HomeScreen(),
        AboutScreen(),
        GalleryScreen(),
        StoreScreen(),
        ContactScreen(),
      ],
    );
  }
}

//Λ
