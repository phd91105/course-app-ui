import 'package:course_app/components/course_list.dart';
import 'package:course_app/components/main_title.dart';
import 'package:course_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 140),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('assets/images/avatar.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Cháu ông dev',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                '@chauOngDev',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38, left: 25, right: 22),
              child: MainTitle(
                title: 'Courses Watched',
              ),
            ),
            CoursesList(),
          ],
        ),
      ),
    );
  }
}
