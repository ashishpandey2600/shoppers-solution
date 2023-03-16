import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const RoundButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(onPressed: onPress,
      color: Colors.deepOrange, minWidth: double.infinity,
      child: Text(title, style: (TextStyle(color: Colors.white)),),
      )
    );
  }
}
