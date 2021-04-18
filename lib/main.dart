import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aos_xtream/components/popular_channels.dart';
import 'package:aos_xtream/components/status.dart';
import 'package:aos_xtream/components/side_bar.dart';
import 'package:aos_xtream/library/dovetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Product Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFe8edf3),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color sidebarColor = Color(0xFF304074);

    return Dovetail(
      columnCount: 5,
      children: [
        DovePin(
          flex: 1,
          child: Container(
            color: sidebarColor,
            child: SideBar(),
          ),
        ),
        DovePin(
          flex: 4,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Status(),
                  SizedBox(height: 60),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 6,
                        child: PopularChannels(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
