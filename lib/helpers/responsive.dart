import 'package:flutter/material.dart';

const int smallScreenWidth = 852;
const int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget largeScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenWidth;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenWidth;
  }

  static bool isMediumScreen(BuildContext context) {
    return (MediaQuery.of(context).size.width <= largeScreenWidth &&
        MediaQuery.of(context).size.width >= smallScreenWidth);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var maxWidth = constraints.maxWidth;
        if (maxWidth > largeScreenWidth) {
          return largeScreen;
        } else if (maxWidth >= smallScreenWidth &&
            maxWidth <= largeScreenWidth) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
