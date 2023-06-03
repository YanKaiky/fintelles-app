// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolioapp/config/responsive.dart';

import 'package:portfolioapp/config/sizes.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: Responsive.isDesktop(context) ? 180.0 : 110,
      ),
      padding: EdgeInsets.only(
        top: 20.0,
        left: Responsive.isDesktop(context) ? 20.0 : 10,
        bottom: 20.0,
        right: Responsive.isDesktop(context) ? 40.0 : 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon, width: 25.0),
          SizedBox(
            height: SizesConfig.blockSizeVertical! * 2.4,
          ),
          PrimaryText(
            text: label,
            color: AppColors.secondary,
            size: 13.0,
          ),
          SizedBox(
            height: SizesConfig.blockSizeVertical! * 2.4,
          ),
          PrimaryText(
            text: amount,
            fontWeight: FontWeight.w900,
            size: 15.0,
          ),
        ],
      ),
    );
  }
}
