import 'package:flutter/material.dart';

import '../resources/colors/document_colors.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: DocumentColors.message,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Клиника прислала документ после приёма. '
                  'Чтобы добавить его в медкарту и посмотреть '
                  'содержание, нужно будет указать дату рождения '
                  'пациента. Это проверка для безопасности данных.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
            right: -25,
            bottom: -20,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.info_outline,
                color: DocumentColors.messageIcon,
                size: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}