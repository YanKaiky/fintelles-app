import 'package:flutter/material.dart';
import 'package:portfolioapp/components/payment.list.tile.dart';
import 'package:portfolioapp/config/sizes.dart';
import 'package:portfolioapp/models/data.dart';
import 'package:portfolioapp/repositories/data/data.repository.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataModel> recentActivities = DataRepository().getRecentActivities();
    List<DataModel> upcomingPayments = DataRepository().getUpcomingPayments();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizesConfig.blockSizeVertical! * 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: const [
              BoxShadow(
                color: AppColors.iconGray,
                blurRadius: 15.0,
                offset: Offset(10.0, 15.0),
              )
            ],
          ),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(height: SizesConfig.blockSizeVertical! * 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PrimaryText(
              text: 'Recent Activities',
              size: 18,
              fontWeight: FontWeight.w900,
            ),
            PrimaryText(
              text: '02 June 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(height: SizesConfig.blockSizeVertical! * 2),
        Column(
          children: List.generate(
            recentActivities.length,
            (i) {
              return PaymentListTile(data: recentActivities[i]);
            },
          ),
        ),
        SizedBox(height: SizesConfig.blockSizeVertical! * 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PrimaryText(
              text: 'Upcoming Payments',
              size: 18,
              fontWeight: FontWeight.w900,
            ),
            PrimaryText(
              text: '02 June 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(height: SizesConfig.blockSizeVertical! * 2),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (i) {
              return PaymentListTile(data: upcomingPayments[i]);
            },
          ),
        ),
      ],
    );
  }
}
