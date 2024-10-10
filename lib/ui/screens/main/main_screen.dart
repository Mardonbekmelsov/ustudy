import 'package:flutter/material.dart';
import 'package:ustudy/utils/app_constants.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  MainScreen({super.key, required this.curIndex});

  int curIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width - 32, 45),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/language_icon.png'),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "RU",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )),
        body: AppConstants.screens[widget.curIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (widget.curIndex != 0) {
                    setState(() {
                      widget.curIndex = 0;
                    });
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.curIndex == 0
                          ? "assets/images/book_purple.png"
                          : "assets/images/book_grey.png",
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      "Подготовка",
                      style: TextStyle(
                        color: widget.curIndex == 0
                            ? const Color(0xff3B46E0)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (widget.curIndex != 1) {
                    setState(() {
                      widget.curIndex = 1;
                    });
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.curIndex == 1
                          ? "assets/images/test_purple.png"
                          : "assets/images/test_grey.png",
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      "Тесты",
                      style: TextStyle(
                        color: widget.curIndex == 1
                            ? const Color(0xff3B46E0)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (widget.curIndex != 2) {
                    setState(() {
                      widget.curIndex = 2;
                    });
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.curIndex == 2
                          ? "assets/images/people_purple.png"
                          : "assets/images/people_grey.png",
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      "Репетиторы",
                      style: TextStyle(
                        color: widget.curIndex == 2
                            ? const Color(0xff3B46E0)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (widget.curIndex != 3) {
                    setState(() {
                      widget.curIndex = 3;
                    });
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.curIndex == 3
                          ? "assets/images/phone_purple.png"
                          : "assets/images/phone_grey.png",
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      "Подготовка",
                      style: TextStyle(
                        color: widget.curIndex == 3
                            ? const Color(0xff3B46E0)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
