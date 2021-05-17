import 'package:course_app/widgets/profile/profile_appbar.dart';
import 'package:course_app/widgets/profile/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ProfileAppBar(),
          ProfileBody(),
        ],
      ),
    );
  }
}
