import 'package:dating_app/constants/constants.dart';
import 'package:dating_app/helpers/responsive.dart';
import 'package:dating_app/helpers/style.dart';
import 'package:dating_app/widgets/botton_text_widget.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1440,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Because you deserve better',
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Color(0xC1A23EFF),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.1),
                  ),
                ),
                FittedBox(
                  child: RichText(
                    softWrap: false,
                    text: TextSpan(
                        children: [
                          TextSpan(text: "Get Noticed for"),
                          TextSpan(
                            text: " who you are \n",
                            style: GoogleFonts.roboto(
                              color: active,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(text: "not what "),
                          TextSpan(
                            text: " you look like ",
                            style: GoogleFonts.roboto(
                              color: active,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                        style: GoogleFonts.roboto(
                          fontSize: ResponsiveWidget.isMediumScreen(context)
                              ? 38
                              : 58,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(1),
                        )),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  child: Text(mainParagraph,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        letterSpacing: 1.5,
                        height: 1.2,
                      )),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          offset: Offset(0, 40),
                          blurRadius: 80,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: screenSize.width / 4,
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined),
                            hintText: "Enter email",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      CustomButton(text: "Get Started"),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 14,
                ),
                Visibility(
                    visible: screenSize.width > 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        BottonText(
                            mainText: "15k+",
                            secondText: "Dates and matches\n everyday"),
                        BottonText(
                            mainText: "1.234k",
                            secondText: "New menbers \n everyday"),
                        BottonText(
                            mainText: "1M+",
                            secondText: "Members around \n the world"),
                      ],
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/img.png",
                  width: screenSize.width / 2.2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
