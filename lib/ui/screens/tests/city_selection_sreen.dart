import 'package:flutter/material.dart';
import 'package:ustudy/data/models/test_model.dart';
import 'package:ustudy/ui/screens/tests/filial_selection_screen.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'package:ustudy/utils/cities.dart';

class CitySelectionSreen extends StatelessWidget {
  const CitySelectionSreen({super.key, required this.test});

  final TestModel test;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(test.testName),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Выберите город",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ProfileSubjectsSelection(subjects: kazakhstanCities)),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FilialSelectionScreen(test: test)));
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
