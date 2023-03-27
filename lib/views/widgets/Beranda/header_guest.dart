import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';

class HeaderBerandaGuest extends StatelessWidget {
  const HeaderBerandaGuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now();
    final currentHour = currentTime.hour;
    final timeOfDay = _getTimeOfDay(currentHour);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat $timeOfDay 👋",
              style: textRegular14.copyWith(color: darkTextColor),
            ),
            Text("Apa kabar hari ini?",
                style: titleBold21.copyWith(color: darkTextColor))
          ],
        ),
        Image.asset(
          "assets/images/guest_profile.png",
          width: MediaQuery.of(context).size.width * 0.125,
        )
      ],
    );
  }
}

String _getTimeOfDay(int hour) {
  if (hour >= 0 && hour < 12) {
    return 'Pagi';
  } else if (hour >= 12 && hour < 15) {
    return 'Siang';
  } else if (hour >= 15 && hour < 18) {
    return 'Sore';
  } else {
    return 'Malam';
  }
}
