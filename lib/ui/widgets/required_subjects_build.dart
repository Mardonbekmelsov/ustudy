import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RequiredSubjectsBuild extends StatelessWidget {
  RequiredSubjectsBuild({
    super.key,
    required this.subjects,
  });

  List<Map<String, dynamic>> subjects;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        final subject = subjects[index];

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 32,
                padding: const EdgeInsets.all(8),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff3B46E0),
                ),
                child: Image.asset(subject['icon']),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                subject['name'],
                style: const TextStyle(
                  color: Color(0xff3B46E0),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}