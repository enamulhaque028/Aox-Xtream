import 'package:flutter/material.dart';
import 'package:aos_xtream/widgets/sidebar_item.dart';

class SideBar extends StatelessWidget {
  final TextStyle headingStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      letterSpacing: 2);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/logo.png',
                width: 150,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                color: Color(0xFF162d5f),
                child: SidebarItem(
                  icon: Icons.online_prediction_outlined,
                  title: 'Stream',
                ),
              ),
              SidebarItem(
                icon: Icons.person_outline_rounded,
                title: 'User Manage',
              ),
              SidebarItem(
                icon: Icons.view_carousel_outlined,
                title: 'Viewer Manage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
