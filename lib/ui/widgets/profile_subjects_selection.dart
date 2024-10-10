import 'package:flutter/material.dart';
import 'package:ustudy/utils/app_constants.dart';

// ignore: must_be_immutable
class ProfileSubjectsSelection extends StatefulWidget {
  const ProfileSubjectsSelection({super.key, required this.subjects});

  final List<String> subjects;

  @override
  State<ProfileSubjectsSelection> createState() =>
      _ProfileSubjectsSelectionState();
}

class _ProfileSubjectsSelectionState extends State<ProfileSubjectsSelection> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.subjects.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              tileColor: Colors.white,
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              title: Text(
                widget.subjects[index],
              ),
              trailing: selectedIndex == index
                  ? Icon(
                      Icons.check,
                      color: AppConstants.mainColor,
                    )
                  : null,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}
