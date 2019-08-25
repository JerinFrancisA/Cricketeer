import 'package:cricketeer/screens/players.dart';
import 'package:flutter/material.dart';
import 'package:cricketeer/utilities/constants.dart';
import 'package:cricketeer/custom_widgets/team_name.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Choose Team", style: kPnameStyle),
                  background: Image.network(
                    "https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                children: <Widget>[
                  TeamName(
                    name: 'India',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/india/flag-400.png',
                    color: Colors.blue,
                  ),
                  TeamName(
                    name: 'England',
                    flagUrl:
                        'https://i.ebayimg.com/images/g/CGIAAOSwkchc3ax1/s-l300.jpg',
                    color: Colors.blue.shade100,
                  ),
                  TeamName(
                    name: 'Australia',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/australia/flag-400.png',
                    color: Colors.yellow.shade700,
                  ),
                  TeamName(
                    name: 'South Africa',
                    flagUrl:
                        'https://static.vecteezy.com/system/resources/previews/000/006/894/non_2x/south-african-flag-vector.jpg',
                    color: Colors.green,
                  ),
                  TeamName(
                    name: 'New Zealand',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/new-zealand/flag-400.png',
                    color: Colors.black,
                  ),
                  TeamName(
                    name: 'West Indies',
                    flagUrl:
                        'https://seeklogo.com/images/W/west-indies-cricket-team-logo-49A5C6EAE7-seeklogo.com.png',
                    color: Color(0xFF872936),
                  ),
                  TeamName(
                    name: 'Afghanistan',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/afghanistan/flag-400.png',
                    color: Colors.blueAccent,
                  ),
                  TeamName(
                    name: 'Pakistan',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/pakistan/flag-400.png',
                    color: Color(0xFF01411C),
                  ),
                  TeamName(
                    name: 'Sri Lanka',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/sri-lanka/flag-400.png',
                    color: Colors.blue.shade800,
                  ),
                  TeamName(
                    name: 'Bangladesh',
                    flagUrl:
                        'https://cdn.countryflags.com/thumbs/bangladesh/flag-400.png',
                    color: Color(0xFF004A36),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
