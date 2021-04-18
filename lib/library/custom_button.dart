import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Icon btnIcon;

  const CustomButton({Key key, this.btnText, this.btnColor, this.btnIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          btnIcon == null
              ? Opacity(opacity: 0, child: Icon(Icons.add))
              : btnIcon,
          SizedBox(width: 8),
          Text(btnText),
        ],
      ),
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
