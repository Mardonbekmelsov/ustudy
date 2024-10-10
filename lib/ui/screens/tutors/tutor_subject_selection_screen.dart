import 'package:flutter/material.dart';
import 'package:ustudy/ui/screens/courses/data_entry_screen.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'package:ustudy/utils/courses.dart';

class TutorSubjectSelectionScreen extends StatelessWidget {
  const TutorSubjectSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Репетиторы"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Выберите предмет",
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
                  subjects: courses[1]
                      .requiredSubjects
                      .map((element) => element['name'] as String)
                      .toList()),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataEntryScreen(title: "Репетиторы"),
                  ),
                );
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
