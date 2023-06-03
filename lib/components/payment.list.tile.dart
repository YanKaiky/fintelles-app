import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/models/data.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class PaymentListTile extends StatelessWidget {
  final DataModel data;

  const PaymentListTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50.0,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(data.icon, width: 20.0),
      ),
      title: PrimaryText(
        text: data.label,
        size: 14.0,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: 'Successfuly',
            size: 12.0,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: data.amount,
            size: 16.0,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
