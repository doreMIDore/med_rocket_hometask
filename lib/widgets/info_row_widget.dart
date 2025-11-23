import 'package:flutter/material.dart';

import '../resources/colors/document_colors.dart';

class InfoRowWidget extends StatelessWidget {
  const InfoRowWidget({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
  });

  final IconData icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: DocumentColors.iconList, size: 30),
        SizedBox(width: 25),
        Expanded(
          child: subtitle?.isNotEmpty == true
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                subtitle!,
                style: TextStyle(
                  fontSize: 14,
                  color: DocumentColors.subtitleText,
                ),
              ),
            ],
          )
              : SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}