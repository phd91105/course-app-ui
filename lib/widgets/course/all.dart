import 'package:course_app/widgets/course/one.dart';
import 'package:course_app/controllers/course/all.dart';
import 'package:course_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 4),
      child: SingleChildScrollView(
          child: GetX<CourseController>(
        init: CourseController(),
        builder: (_) => SizedBox(
          height: 330,
          child: _.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(secondaryBGColor),
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _.courseList.length,
                  itemBuilder: (context, index) =>
                      CourseCard(_.courseList[index]),
                ),
        ),
      )),
    );
  }
}
