import 'package:flutter/material.dart';
import 'package:ustudy/data/models/course_model.dart';
import 'package:ustudy/ui/screens/courses/data_entry_screen.dart';
import 'package:ustudy/ui/screens/courses/language_subjects_screen.dart';
import 'package:ustudy/ui/screens/courses/profile_selection_screen.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/ui/widgets/required_subjects_build.dart';
import 'package:ustudy/utils/app_constants.dart';

class CourseDetailScreen extends StatelessWidget {
  final CourseModel course;

  const CourseDetailScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(course.courseName),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                course.courseName,
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
              course.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              course.requiredSubjects.isEmpty
                  ? "Выберите профильный предмет"
                  : "Обязательные предметы",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: course.requiredSubjects.isEmpty
                    ? ProfileSubjectsSelection(
                        subjects: course.profileSubjects,
                      )
                    : RequiredSubjectsBuild(subjects: course.requiredSubjects)),
            InkWell(
              onTap: () {
                if (course.requiredSubjects.isEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LanguageSubjectsScreen(course: course)));
                } else {
                  if (course.profileSubjects.isEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DataEntryScreen(
                                  title: course.courseName,
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfileSelectionScreen(course: course)));
                  }
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
