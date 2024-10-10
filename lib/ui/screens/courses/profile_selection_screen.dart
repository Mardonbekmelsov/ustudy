import 'package:flutter/material.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'data_entry_screen.dart';
import 'package:ustudy/data/models/course_model.dart';

class ProfileSelectionScreen extends StatefulWidget {
  final CourseModel course;

  const ProfileSelectionScreen({super.key, required this.course});

  @override
  createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(title: Text(widget.course.courseName)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Выберите профильный предмет",
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
                    subjects: widget.course.profileSubjects)),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataEntryScreen(
                              title: widget.course.courseName,
                            )));
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
