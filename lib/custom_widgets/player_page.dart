import 'package:flutter/material.dart';
import 'package:cricketeer/utilities/constants.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class PlayerPage extends StatelessWidget {
  PlayerPage({@required this.img, @required this.pname});

  final img;
  final pname;

  String wikiName() {
    return pname.toString().replaceAll(' ', '_');
  }

  String cricStatName() {
    return pname.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(img),
            radius: 100.0,
          ),
          Text(
            pname,
            style: kPnameStyle,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1018552942670966784/0Zflj6Y_.jpg'),
                ),
                onTap: () {
                  FlutterWebBrowser.openWebPage(
                    url: 'https://en.wikipedia.org/wiki/${wikiName()}',
                    androidToolbarColor: Colors.grey,
                  );
                },
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn1.vectorstock.com/i/1000x1000/45/45/modern-flat-design-grasshopper-icon-vector-6814545.jpg'),
                ),
                onTap: () {
                  FlutterWebBrowser.openWebPage(
                    url: 'http://cricmetric.com/playerstats.py?player=${cricStatName()}&role=all&format=all',
                    androidToolbarColor: Colors.lightGreenAccent.shade400,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
