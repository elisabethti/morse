import 'package:flutter/material.dart';
import 'package:rse_test_app/views/widgets/poli_button.dart';
import 'package:rse_test_app/views/widgets/poli_lainnya_button.dart';

import '../../../theme.dart';

class MenuPoli extends StatelessWidget {
  const MenuPoli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PoliButton('Obgyn', 'assets/icons/poli-obgyn.png', '/login'),
              PoliButton('Paru', 'assets/icons/poli-paru.png', '/login'),
              PoliButton('Gigi', 'assets/icons/poli-gigi.png', '/login'),
              PoliButton('Anak', 'assets/icons/poli-anak.png', '/login'),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PoliButton('Saraf', 'assets/icons/poli-syaraf.png', '/login'),
              PoliButton('Mata', 'assets/icons/poli-mata.png', '/login'),
              PoliButton('Fisio', 'assets/icons/poli-fisio.png', '/login'),
              PoliLainnyaButton('Lainnya', 'assets/icons/poli-lainnya.png'),
            ],
          )
        ],
      ),
    );
  }
}
