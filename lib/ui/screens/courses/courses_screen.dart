import 'package:flutter/material.dart';
import 'package:ustudy/ui/widgets/course_button.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'package:ustudy/utils/courses.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

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
              "Направления деятельности",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return CourseButton(
                  course: course,
                  color: AppConstants.containerColors[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
