import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget smallMobile;
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.smallMobile,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1200 &&
        MediaQuery.of(context).size.width >= 768;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1200) {
      return desktop;
    } else if (size.width >= 768) {
      return tablet;
    } else if (size.width >= 376 && size.width <= 768) {
      return mobile;
    } else {
      return smallMobile;
    }
  }
}
