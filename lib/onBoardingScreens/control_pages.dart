import 'package:flutter/material.dart';

import 'onboard_screen_1.dart';
import 'onboard_screen_2.dart';
import 'onboard_screen_3.dart';

class ControlPages extends StatefulWidget {
  const ControlPages({super.key});

  @override
  State<ControlPages> createState() => _ControlPagesState();
}

class _ControlPagesState extends State<ControlPages> {
  final PageController _onboardScreenController =
      PageController(initialPage: 0);

  // Index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const OnBoardScreen1(),
    const OnBoardScreen2(),
    const OnBoardScreen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        PageView.builder(
            scrollDirection: Axis.vertical,
            controller: _onboardScreenController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            }),
        Positioned(
          right: 10,
          child: Container(
            width: 50,
            height: 120,
        
            color: Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InkWell(
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: _activePage == index
                                  ? Colors.amber
                                  : Colors.white,
                          ),
                        ),
                      )),
            ),
          ),
        )
      ],
    ));
  }
}
