
import 'package:flutter/material.dart';

import '../resources/colors/document_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.paddingTop});

  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: DocumentColors.borderAppBar, width: 2.0),
        ),
      ),
      child: AppBar(
        backgroundColor: DocumentColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          "Новый документ",
          style: TextStyle(
            color: DocumentColors.titleText,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
      ),
    );
  }
}