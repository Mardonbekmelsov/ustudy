import 'package:flutter/material.dart';
import 'package:ustudy/utils/app_constants.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Политика конфеденциальности"),
        backgroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Настоящие Условия использования ("Условия") были последний раз обновлены Май 8, 2023.',
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Внимательно изучите настоящие Условия: они представляют собой юридическое соглашение, заключаемое между вами и нашей компанией, и содержат важную информацию о ваших правах, средствах правовой защиты и обязанностях.",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "ЕСЛИ ВЫ ПРОЖИВАЕТЕ В США ИЛИ КАНАДЕ, СОГЛАШАЯСЬ С ЭТИМИ УСЛОВИЯМИ, ВЫ СОГЛАШАЕТЕСЬ РАЗРЕШАТЬ ВСЕ СПОРЫ С UDEMY ЧЕРЕЗ СУД МЕЛКИХ ТЯЖБ ИЛИ ПОСРЕДСТВОМ ОБЯЗЫВАЮЩЕГО ИНДИВИДУАЛЬНОГО АРБИТРАЖА, А ТАКЖЕ ОТКАЗЫВАЕТЕСЬ ОТ ПРАВА НА УЧАСТИЕ В КОЛЛЕКТИВНЫХ ИСКАХ И РАССМОТРЕНИЕ ИСКОВ СУДОМ ПРИСЯЖНЫХ, КАК ПОДРОБНО УКАЗАНО В РАЗДЕЛЕ «РАЗРЕШЕНИЕ СПОРОВ».",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Миссия Udemy — сделать жизнь лучше с помощью новых знаний. Мы позволяем любому лицу в любой точке мира создавать и обмениваться образовательными материалами (преподаватели) и зарегистрироваться для получения доступа к образовательным материалам (студенты). Мы считаем, что наша модель торговой площадки лучше всего подходит для предложения полезных обучающих материалов нашим пользователям. Чтобы поддерживать безопасность нашей платформы и услуг для вас, нас и нашего сообщества преподавателей и студентов, мы разработали определенные правила. Настоящие Условия применяются ко всем вашим действиям на веб-сайте Udemy, в мобильных приложениях Udemy, наших приложениях для телевизора, наших API и других связанных услугах («Услуги»).",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
