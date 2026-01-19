import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColors;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final BorderRadius radius;

  const RoundedButton({
    super.key,
    required this.btnName,
    this.icon,
    this.bgColors = Colors.blue,
    this.textStyle,
    this.onPressed,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColors,
        shape: RoundedRectangleBorder(borderRadius: radius),
      ),
      onPressed: () {
        onPressed!();
      },
      child:
          icon != null
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  SizedBox(width: 20),
                  Text(btnName, style: textStyle),
                ],
              )
              : Text(btnName, style: textStyle),
    );
  }
}
