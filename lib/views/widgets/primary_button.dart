import 'package:flutter/material.dart';

import '../../theme.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final String? route;
  const PrimaryButton(this.text, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(blueColor),
          foregroundColor: MaterialStateProperty.all<Color>(lightTextColor),
          fixedSize: MaterialStateProperty.all<Size>(
              Size(MediaQuery.of(context).size.width, 48))),
      onPressed: () {
        Navigator.pushReplacementNamed(context, route!);
      },
      child: Text(text!, style: textBold14),
    );
  }
}
