import 'package:dating_app/helpers/responsive.dart';
import 'package:dating_app/helpers/style.dart';
import 'package:dating_app/pages/home/desktop.dart';
import 'package:dating_app/pages/home/mobile.dart';
import 'package:dating_app/widgets/drawer.dart';
import 'package:dating_app/widgets/navbar_desktop.dart';
import 'package:dating_app/widgets/navbar_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            bgColor,
            bgColor2,
          ],
          stops: [0.4, 1],
        ),
      ),
      child: Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 50),
                child: mobileNavBar(scaffoldKey))
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: const NavBar(),
              ),
        drawer: const SideMenu(),
        backgroundColor: Colors.transparent,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ),
      ),
    );
  }
}
