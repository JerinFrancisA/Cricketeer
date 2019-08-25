import 'package:flutter/material.dart';
import 'package:cricketeer/utilities/constants.dart';
import 'package:cricketeer/screens/players.dart';

class TeamName extends StatelessWidget {
  TeamName({@required this.name, @required this.color, @required this.flagUrl});

  final name;
  final color;
  final flagUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
        top: 9.0,
        bottom: 9.0,
      ),
      child: Center(
        child: RawMaterialButton(
          fillColor: color,
          elevation: 12.0,
          splashColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
            side: BorderSide.none,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(16.0),
            leading: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                flagUrl,
              ),
            ),
            title: Text(
              name,
              style: kPnameStyle,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Players(
                  country: name,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
