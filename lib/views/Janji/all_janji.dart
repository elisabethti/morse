import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';

import '../widgets/Janji/card_janji.dart';

class AllJanji extends StatefulWidget {
  final bool showBackButton;

  const AllJanji({Key? key, required this.showBackButton}) : super(key: key);

  @override
  State<AllJanji> createState() => _AllJanjiState();
}

class _AllJanjiState extends State<AllJanji> {
  // late TabController _tabController;

  final _selectedColor = blueColor;
  final _unselectedColor = blueGreyColor;
  final _tabs = [
    const Tab(text: 'Akan'),
    const Tab(text: 'Selesai'),
  ];

  // @override
  // void initState() {
  //   _tabController = TabController(length: 2, vsync: this);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.165),
          child: Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: AppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              leading: widget.showBackButton
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: darkTextColor,
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : null,
              title: Text(
                "Semua janji",
                style: textBold21.copyWith(color: darkTextColor),
              ),
              bottom: PreferredSize(
                preferredSize: Size(MediaQuery.of(context).size.width, 40),
                child: SizedBox(
                  height: 40,
                  child: TabBar(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    labelColor: lightTextColor,
                    labelStyle: titleBold12,
                    unselectedLabelColor: darkBlueGreyTextColor,
                    unselectedLabelStyle: title12,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(smallMargin),
                        color: blueColor),
                    tabs: _tabs,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Widget untuk halaman "Akan"
            SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: defaultMargin),
                child: CardJanji()),
            // Widget untuk halaman "Selesai"
            Container(
              child: Text('Halaman Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}
