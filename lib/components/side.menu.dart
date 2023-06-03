import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/config/sizes.dart';
import 'package:portfolioapp/styles/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: SizesConfig.screenHeight,
          color: AppColors.secondaryBG,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: SvgPicture.asset('assets/mac-action.svg'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/home.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/pie-chart.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/clipboard.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/credit-card.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/trophy.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/invoice.svg'),
                  color: AppColors.iconGray,
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
