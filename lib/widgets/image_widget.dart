import 'package:flutter/material.dart';

import '../resources/images/document_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        DocumentImage.photo,
        width: double.infinity,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}