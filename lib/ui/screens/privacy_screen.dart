import 'package:flutter/material.dart';
import 'package:ustudy/utils/app_constants.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

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
                "Настоящая Политика конфиденциальности была последний раз обновлена Июль 11, 2024.",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Благодарим Вас за то, что присоединились к Udemy. Мы в Udemy (далее «Udemy», «мы», «нас») уважаем конфиденциальность клиентов и хотим, чтобы Вы понимали, как мы будем собирать, использовать и передавать данные о Вас. Настоящая Политика конфиденциальности описывает нашу практику сбора данных и Ваши права в отношении персональных данных.",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Если мы не приводим ссылку на другую политику или не указываем иное, настоящая Политика конфиденциальности применяется при посещении и использовании Вами веб-сайта Udemy, мобильных приложений, API или связанных услуг («Услуги»). Это также применимо к потенциальным клиентам наших корпоративных и бизнес-продуктов.",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Используя Услуги, Вы соглашаетесь с условиями настоящей Политики конфиденциальности. Вы обязуетесь не использовать Услуги, если Вы не согласны с настоящей Политикой конфиденциальности или любым другим соглашением, которое регламентирует использование Услуг.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
