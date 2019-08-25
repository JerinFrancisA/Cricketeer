import 'package:cricketeer/screens/players.dart';
import 'package:flutter/material.dart';
import 'package:cricketeer/screens/home_screen.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: HomeScreen.routeName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(),
        title: 'Cricketeer',
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          Players.routeName: (context) => Players(),
        },
      ),
    );
