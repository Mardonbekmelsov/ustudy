import 'package:flutter/material.dart';
import 'package:ustudy/ui/screens/contact/contacts_screen.dart';
import 'package:ustudy/ui/screens/courses/courses_screen.dart';
import 'package:ustudy/ui/screens/tests/test_screen.dart';
import 'package:ustudy/ui/screens/tutors/tutors_screen.dart';

class AppConstants {
  static List screens = [
    const CoursesScreen(),
    const TestScreen(),
    const TutorsScreen(),
    ContactsScreen(),
  ];
  static List containerColors = [
    const Color(0xffC4C7F6),
    const Color(0xffCAF6A7),
    const Color(0xffA6E7C9),
    const Color(0xffA9D7F9),
  ];
  static List containerColors2 = [
    const Color(0xffA9D7F9),
    const Color(0xffC4C7F6),
    const Color(0xffA6E7C9),
  ];

  static Color mainColor = const Color(0xff3B46E0);

  static Color backgroundColor = const Color(0xffF6F9FB);

  static String mapApi = "AIzaSyAuvo-LYYpcsbUwdR15cJeDFhnoqmXzdAU";
}
