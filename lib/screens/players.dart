import 'package:cricketeer/custom_widgets/player_page.dart';
import 'package:flutter/material.dart';
import 'package:cricketeer/utilities/team.dart';

class Players extends StatelessWidget {
  static const routeName = 'Players';
  Players({@required this.country});
  final country;
  final _pageController =
  PageController(initialPage: 0, viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: _pageController,
          itemCount: team[country].length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return PlayerPage(
              img: team[country][index]['img'],
              pname: team[country][index]['pname'],
            );
          },
        ),
      ),
    );
  }
}
