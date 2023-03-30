import 'package:flutter/material.dart';

import '../../theme.dart';

class PoliButton extends StatelessWidget {
  final String? text;
  final String? imageUrl;
  final String? route;
  const PoliButton(this.text, this.imageUrl, this.route, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route!);
      },
      child: Column(
        children: [
          Image.asset(
            imageUrl!,
            width: MediaQuery.of(context).size.width * 0.125,
          ),
          SizedBox(
            height: xsmallMargin,
          ),
          Text(
            text!,
            style: textRegular12.copyWith(color: darkTextColor),
          )
        ],
      ),
    );
  }
}
