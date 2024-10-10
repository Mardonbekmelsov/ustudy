import 'package:flutter/material.dart';
import 'package:ustudy/data/models/test_model.dart';
import 'package:ustudy/ui/screens/courses/data_entry_screen.dart';
import 'package:ustudy/ui/screens/tests/city_selection_sreen.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/utils/app_constants.dart';

class TestSelectionScreen extends StatelessWidget {
  final TestModel test;

  const TestSelectionScreen({super.key, required this.test});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(test.testName),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                test.testName,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              test.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Выберите тест",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ProfileSubjectsSelection(
              subjects: test.tests,
            )),
            InkWell(
              onTap: () {
                if (!test.isOfficial) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CitySelectionSreen(test: test)));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DataEntryScreen(title: test.testName)));
                }
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: AppConstants.mainColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    "Далее",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
