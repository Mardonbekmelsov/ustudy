import 'package:flutter/material.dart';
import 'package:ustudy/ui/screens/tutors/tutor_subject_selection_screen.dart';
import 'package:ustudy/ui/widgets/profile_subjects_selection.dart';
import 'package:ustudy/utils/app_constants.dart';
import 'package:ustudy/utils/courses.dart';

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Репетиторы",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Наши курсы включают видеоуроки, практические тесты и групповые занятия, что помогает студентам успешно подготовиться к поступлению в престижные магистерские программы.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Стоимость репетиторства: ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "15 000 ТГ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppConstants.mainColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Выберите программу",
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
              subjects: courses.map((element) => element.courseName).toList(),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TutorSubjectSelectionScreen(),
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
    );
  }
}
