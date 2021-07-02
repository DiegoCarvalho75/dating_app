import 'package:dating_app/helpers/style.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<bool> _isHovering = <bool>[false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset("assets/logo.png"),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: screenSize.width / 20,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 12),
                        Text(
                          "Pricing",
                          style: GoogleFonts.roboto(
                              letterSpacing: 1.2,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[0] ? active : disable),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Visibility(
                            visible: _isHovering[0],
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            child: Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 20,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 12),
                        Text(
                          "Download",
                          style: GoogleFonts.roboto(
                              letterSpacing: 1.2,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[1] ? active : disable),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          visible: _isHovering[1],
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color: active,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width / 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 20,
                  ),
                ],
              ),
            ),
            const CustomButton(text: "Register"),
            SizedBox(width: screenSize.width / 40),
          ],
        ),
      ),
    );
  }
}
