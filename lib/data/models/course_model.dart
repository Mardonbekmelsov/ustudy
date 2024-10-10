class CourseModel {
  String courseName;
  String description;
  List<String> listOfServices;
  List<Map<String, dynamic>> requiredSubjects;
  List<String> profileSubjects;
  List<String> languageSubjects;

  CourseModel({
    required this.courseName,
    required this.description,
    required this.listOfServices,
    required this.requiredSubjects,
    required this.profileSubjects,
    required this.languageSubjects,
  });
}
