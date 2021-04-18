import 'package:flutter/material.dart';

class Channel {
  final String serial;
  final String name;
  final String group;
  final String status;
  final Switch switchBtn;
  final Icon actionIcon;

  Channel(
    this.serial,
    this.name,
    this.group,
    this.status,
    this.switchBtn,
    this.actionIcon,
  );
}
