import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';

class BerandaGuestPage extends StatefulWidget {
  const BerandaGuestPage({Key? key}) : super(key: key);

  @override
  State<BerandaGuestPage> createState() => _BerandaGuestPageState();
}

class _BerandaGuestPageState extends State<BerandaGuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
