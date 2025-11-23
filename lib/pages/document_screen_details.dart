import 'package:flutter/material.dart';
import 'package:med_rocket_hometask/resources/colors/document_colors.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/card_button.dart';
import '../widgets/image_widget.dart';
import '../widgets/info_row_widget.dart';
import '../widgets/message_widget.dart';

class DocumentDetail extends StatefulWidget {
  const DocumentDetail({super.key});

  @override
  State<DocumentDetail> createState() => _DocumentDetailState();
}

class _DocumentDetailState extends State<DocumentDetail> {
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: DocumentColors.background,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(paddingTop: paddingTop),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ImageWidget(),
            ),

            //name_InfoRowWidget
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: InfoRowWidget(
                icon: Icons.person_outline_rounded,
                title: "Ирина",
              ),
            ),

            //calendar_InfoRowWidget
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: InfoRowWidget(
                icon: Icons.calendar_today,
                title: "22 мая (вт), 16:00",
                subtitle: "Дата получения документа",
              ),
            ),

            //location_InfoRowWidget
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: InfoRowWidget(
                icon: Icons.local_hospital_outlined,
                title: "Клиника «Фомина» ",
                subtitle: "Бульвар Перервинский д. 4",
              ),
            ),

            //doctor_InfoRowWidget
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: InfoRowWidget(
                icon: Icons.person_outline_rounded,
                title: "Стоматолог",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MessageWidget(),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 16,
                      right: 16,
                    ),
                    child: CardButton(
                      text: 'Добавить в медкарту',
                      backgroundColor: DocumentColors.addingCardButtonBC,
                      textColor: DocumentColors.addingCardButtonText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 16,
                      right: 16,
                    ),
                    child: CardButton(
                      text: "Удалить",
                      backgroundColor: DocumentColors.deleteCardButtonBC,
                      textColor: DocumentColors.deleteCardButtonText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










