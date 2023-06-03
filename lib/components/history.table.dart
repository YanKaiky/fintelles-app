import 'package:flutter/material.dart';
import 'package:portfolioapp/config/responsive.dart';
import 'package:portfolioapp/config/sizes.dart';
import 'package:portfolioapp/models/transfers.dart';
import 'package:portfolioapp/repositories/transfers/transfers.repository.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    List<TransfersModel> transactionHistory =
        TransfersRepository().getTransactionHistory();

    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizesConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (i) {
              return TableRow(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      left: 20.0,
                    ),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage(
                        transactionHistory[i].avatar,
                      ),
                    ),
                  ),
                  PrimaryText(
                    text: transactionHistory[i].label,
                    size: Responsive.isDesktop(context) ? 16 : 12,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[i].time,
                    size: Responsive.isDesktop(context) ? 16 : 12,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[i].amount,
                    size: Responsive.isDesktop(context) ? 16 : 12,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[i].status,
                    size: Responsive.isDesktop(context) ? 16 : 12,
                    color: AppColors.secondary,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
