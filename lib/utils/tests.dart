import 'package:ustudy/data/models/test_model.dart';

List<TestModel> tests = [
  TestModel(
    testName: "Пробное тестирование (offline)",
    description:
        "Пройдите пробный тест оффлайн в условиях, максимально приближенных к реальному экзамену в официальных тест центрах",
    tests: ['ЕНТ', 'ОЗП'],
    isOfficial: false,
  ),
  TestModel(
    testName: "Пробное тестирование (online)",
    description:
        "Пройдите пробный тест оффлайн в условиях, максимально приближенных к реальному экзамену в официальных тест центрах",
    tests: ['ЕНТ', 'ОЗП'],
    isOfficial: false,
  ),
  TestModel(
    testName: "Официальное тестирование",
    description:
        "Стандартизированные экзамены для поступления в зарубежные вузы и школы оценивающий уровень академической подготовки",
    tests: ['GMAT', 'GRE', 'SAT', 'IELTS', 'TOEFL'],
    isOfficial: true,
  ),
];
