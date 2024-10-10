import 'package:flutter/material.dart';
import 'package:ustudy/ui/screens/main/main_screen.dart';
import 'package:ustudy/utils/app_constants.dart';

class RequestDialog extends StatelessWidget {
  const RequestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 50),
      actionsPadding: const EdgeInsets.only(bottom: 5),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: -5,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Заявка успешно отправлена!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "В ближайшее время мы вам перезвоним",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Divider(
          color: Colors.grey.shade300,
        ),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(curIndex: 0),
                  ),
                  (Route<dynamic> route) => false);
            },
            child: Text(
              "Закрыть",
              style: TextStyle(
                color: AppConstants.mainColor,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
