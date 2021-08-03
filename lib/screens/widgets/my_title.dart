import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';

class MyTitle extends StatelessWidget {
  final IconData icon;
  final String text;

  MyTitle({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(icon),
        Text(text),
      ],
    );
  }
}
