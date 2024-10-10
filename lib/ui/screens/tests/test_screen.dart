import 'package:flutter/material.dart';
import 'package:ustudy/ui/widgets/test_button.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'package:ustudy/utils/tests.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 200,
            child: Text(
              "Тесты",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Все ваши тесты в одном месте: пробные тесты и официальные тесты.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tests.length,
              itemBuilder: (context, index) {
                return TestButton(
                  test: tests[index],
                  color: AppConstants.containerColors2[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
