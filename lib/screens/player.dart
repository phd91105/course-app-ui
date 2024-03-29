import 'package:course_app/controllers/player.dart';
import 'package:course_app/widgets/player/controls.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class PlayerScreen extends StatelessWidget {
  PlayerScreen({
    required this.videoLink,
    required this.title,
  });
  final String videoLink, title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () => Get.back(),
          ),
        ),
        title: Text(
          'Home',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              child: GetBuilder<PlayerController>(
                init: PlayerController(videoLink),
                builder: (_) {
                  return SizedBox(
                    height: !context.isLandscape ? 225 : Get.width,
                    child: FlickVideoPlayer(
                      flickManager: _.flickManager,
                      preferredDeviceOrientation: [
                        DeviceOrientation.landscapeRight,
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.portraitUp
                      ],
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: PlayerControls(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ReactButton(
                  icon: Icons.thumb_up_alt_outlined,
                  count: 123,
                ),
                ReactButton(
                  icon: Icons.thumb_down_alt_outlined,
                  count: 10,
                ),
              ],
            ),
            LanguageDropdown(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff484848),
                ),
                height: 300,
                child: ListView(
                  children: [
                    SubTitle(
                      time: '0:02',
                      sub: "Sorry can't answer your call at the",
                    ),
                    SubTitle(
                      time: '0:02',
                      sub: "moment",
                    ),
                    SubTitle(
                      time: '1:02',
                      sub: "Cause she really",
                    ),
                    SubTitle(
                      time: '2:02',
                      sub: "Got me focused",
                    ),
                    SubTitle(
                      time: '3:02',
                      sub: "On her lips wow",
                    ),
                    SubTitle(
                      time: '4:02',
                      sub: "Sorry can't answer your call",
                    ),
                    SubTitle(
                      time: '5:02',
                      sub: "Sorry can't answer your call",
                    ),
                    SubTitle(
                      time: '6:02',
                      sub: "Sorry can't answer your call",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key? key,
    required this.time,
    required this.sub,
  }) : super(key: key);
  final String time, sub;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListTile(
        onTap: () {},
        leading: Text(
          time,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        title: Text(
          sub,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton(
        dropdownColor: primaryBGColor,
        underline: SizedBox(),
        value: 1,
        items: [
          DropdownMenuItem(
            child: Text(
              'English',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text(
              'Tiếng việt',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            value: 2,
          ),
        ],
        onChanged: (dynamic value) {},
      ),
    );
  }
}

class ControllerButton extends StatelessWidget {
  const ControllerButton({
    Key? key,
    required this.icon,
    required this.onControllerPress,
  }) : super(key: key);
  final IconData icon;
  final Function() onControllerPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: onControllerPress,
        child: SizedBox(
          width: 25,
          height: double.infinity,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ReactButton extends StatelessWidget {
  const ReactButton({
    Key? key,
    required this.count,
    required this.icon,
  }) : super(key: key);
  final int count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 14),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 6.45,
          ),
          Text(
            '$count',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
