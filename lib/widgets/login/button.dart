import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key key,
    this.btnLabel,
    this.onPressed,
    this.btnColor,
    this.textColor,
    this.icon,
  }) : super(key: key);
  final btnLabel, onPressed, btnColor, textColor, icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: icon == null
            ? Text(
                btnLabel,
                style: GoogleFonts.getFont(
                  'Montserrat',
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              )
            : Container(
                width: 250,
                child: Row(
                  children: [
                    icon,
                    SizedBox(
                      width: 15.5,
                    ),
                    Text(
                      btnLabel,
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
