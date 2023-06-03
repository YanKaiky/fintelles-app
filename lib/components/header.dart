import 'package:flutter/material.dart';
import 'package:portfolioapp/config/responsive.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Dashboard',
                size: Responsive.isDesktop(context) ||
                        Responsive.isTablet(context)
                    ? 30.0
                    : 20.0,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Payment Updates',
                size: Responsive.isDesktop(context) ||
                        Responsive.isTablet(context)
                    ? 16.0
                    : 6.0,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        Expanded(
          flex: Responsive.isDesktop(context) ? 1 : 3,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.only(
                left: 40.0,
                right: 5.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.black,
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: AppColors.secondary,
                fontSize: 14.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
