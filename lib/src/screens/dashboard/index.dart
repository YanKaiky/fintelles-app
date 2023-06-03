import 'package:flutter/material.dart';
import 'package:portfolioapp/components/app.bar.action.items.dart';
import 'package:portfolioapp/components/bar.chart.component.dart';
import 'package:portfolioapp/components/header.dart';
import 'package:portfolioapp/components/history.table.dart';
import 'package:portfolioapp/components/info.card.dart';
import 'package:portfolioapp/components/payment.detail.list.dart';
import 'package:portfolioapp/components/side.menu.dart';
import 'package:portfolioapp/config/responsive.dart';
import 'package:portfolioapp/config/sizes.dart';
import 'package:portfolioapp/styles/colors.dart';
import 'package:portfolioapp/styles/styles.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

    SizesConfig().init(context);

    return Scaffold(
      key: drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  if (drawerKey.currentState != null) {
                    drawerKey.currentState!.openDrawer();
                  }
                },
                icon: Icon(Icons.menu_outlined, color: AppColors.black),
              ),
              actions: const [AppBarActionItems()],
            )
          : PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              flex: 10,
              child: SizedBox(
                width: double.infinity,
                height: SizesConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(
                        height: SizesConfig.blockSizeVertical! * 4,
                      ),
                      SizedBox(
                        width: SizesConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20.0,
                          spacing: 20.0,
                          alignment: Responsive.isDesktop(context)
                              ? WrapAlignment.spaceBetween
                              : WrapAlignment.spaceAround,
                          children: const [
                            InfoCard(
                              icon: 'assets/credit-card.svg',
                              label: 'Transfer via \nCard Number',
                              amount: '\$1200',
                            ),
                            InfoCard(
                              icon: 'assets/transfer.svg',
                              label: 'Transfer via \nOnline Bank',
                              amount: '\$150',
                            ),
                            InfoCard(
                              icon: 'assets/bank.svg',
                              label: 'Transfer \nSame bank',
                              amount: '\$1500',
                            ),
                            InfoCard(
                              icon: 'assets/invoice.svg',
                              label: 'Transfer \nOther Bank',
                              amount: '\$1452',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizesConfig.blockSizeVertical! * 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              PrimaryText(
                                text: 'Balance',
                                size: 16,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                text: '\$1500',
                                size: 30,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          PrimaryText(
                            text: 'Past 30 DAYS',
                            size: 16,
                            color: AppColors.secondary,
                          )
                        ],
                      ),
                      SizedBox(height: SizesConfig.blockSizeVertical! * 3),
                      SizedBox(height: 180, child: BarChartComponent()),
                      SizedBox(height: SizesConfig.blockSizeVertical! * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          PrimaryText(
                            text: 'History',
                            size: 30.0,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: 'Transaction of last 6 months',
                            size: 16.0,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(height: SizesConfig.blockSizeVertical! * 3),
                      HistoryTable(),
                      if (!Responsive.isDesktop(context)) PaymentDetailList(),
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizesConfig.screenHeight,
                  color: AppColors.secondaryBG,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 30.0,
                    ),
                    child: Column(
                      children: const [
                        AppBarActionItems(),
                        PaymentDetailList(),
                      ],
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
