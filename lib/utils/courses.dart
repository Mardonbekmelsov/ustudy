import 'package:ustudy/data/models/course_model.dart';

List<CourseModel> courses = [
  CourseModel(
    courseName: "Подготовка к ЕНТ",
    description:
        "Пройдите пробное тестирование, оцените свой уровень подготовки и получите ценные рекомендации.",
    listOfServices: ["9 месяцев", "150 уроков"],
    requiredSubjects: [
      {
        'icon': 'assets/images/math_icon.png',
        'name': 'Математическая грамотность'
      },
      {'icon': 'assets/images/reading_icon.png', 'name': 'Грамотность чтения'},
      {'icon': 'assets/images/history_icon.png', 'name': "История Казахстана"},
    ],
    profileSubjects: [
      'Математика - Физика',
      'Математика - Информатика',
      'Математика - География',
      'Биология - Химия',
      'Биология - География',
      'Иностранный язык - Всемирная история',
      'География - Иностранный язык',
      'Всемирная история - Основы права',
      'Всемирная история - География',
      'Казахская литература / Русская литература - Казахская литература / Русская литература',
      'Химия - Физика',
    ],
    languageSubjects: [],
  ),
  CourseModel(
    courseName: "Подготовка к школе",
    description:
        "Подготовка к школе с Ustudy — это уникальная возможность для детей развивать свои навыки и знания в комфортной и поддерживающей среде. ",
    listOfServices: ["9 месяцев", "150 уроков"],
    requiredSubjects: [
      {'icon': 'assets/images/math_icon.png', 'name': 'Математика'},
      {'icon': 'assets/images/kazakh_icon.png', 'name': 'Казахский язык'},
      {'icon': 'assets/images/russian_icon.png', 'name': "Русский язык"},
      {'icon': 'assets/images/logic_icon.png', 'name': "Логика"},
      {'icon': 'assets/images/english_icon.png', 'name': "Английский язык"},
    ],
    profileSubjects: [],
    languageSubjects: [],
  ),
  CourseModel(
    courseName: "Подготовка к бакалавриату",
    description:
        "Комплексный подход к обучению, включающий в себя подготовку к важным международным экзаменам.",
    listOfServices: ["9 месяцев", "150 уроков"],
    requiredSubjects: [],
    profileSubjects: [
      "SAT",
      "ACT",
      "NUET",
    ],
    languageSubjects: [
      "IETLS",
      "TOEFL",
    ],
  ),
  CourseModel(
    courseName: "Подготовка к магистратуре",
    description:
        "Ustudy предоставляет программы подготовки к магистратуре, охватывающие ключевые аспекты подготовки к экзаменам",
    listOfServices: ["9 месяцев", "150 уроков"],
    requiredSubjects: [],
    profileSubjects: [
      "GRE",
      "GMAT",
    ],
    languageSubjects: [
      "IETLS",
      "TOEFL",
    ],
  ),
];
