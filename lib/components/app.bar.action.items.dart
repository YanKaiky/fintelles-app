import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolioapp/styles/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/calendar.svg',
            width: 20.0,
          ),
        ),
        SizedBox(width: 10.0),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/ring.svg',
            width: 20.0,
          ),
        ),
        SizedBox(width: 15.0),
        Row(
          children: const [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://pps.whatsapp.net/v/t61.24694-24/340349463_237944428812080_8103332990357626475_n.jpg?ccb=11-4&oh=01_AdTlHEN7LqK8V0g_UK6aITZ8rI_M_Uiq9ME9bWhIDIHLlQ&oe=6487A727',
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            ),
          ],
        ),
      ],
    );
  }
}
