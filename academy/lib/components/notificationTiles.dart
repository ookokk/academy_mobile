import 'package:flutter/material.dart';

import '../constants/constants.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final Function onTap;
  final bool enable;

  const NotificationTiles({
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.enable,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(logo), fit: BoxFit.cover))),
      title: Text(title, style: const TextStyle(color: kDarkColor)),
      subtitle: Text(subtitle, style: const TextStyle(color: kLightColor)),
      onTap: onTap(),
      enabled: enable,
    );
  }
}
