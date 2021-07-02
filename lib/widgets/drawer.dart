import 'package:dating_app/helpers/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                "Pricing",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Login",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Register",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Copyright 2021",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
