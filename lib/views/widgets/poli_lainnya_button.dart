import 'package:flutter/material.dart';

import '../../theme.dart';
import 'poli_button.dart';

class PoliLainnyaButton extends StatelessWidget {
  final String? text;
  final String? imageUrl;
  const PoliLainnyaButton(this.text, this.imageUrl, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(largeMargin),
            ),
          ),
          builder: (BuildContext context) {
            return SingleChildScrollView(
              padding: MediaQuery.of(context).viewInsets,
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Pilih Poli Klinik',
                        style: title14.copyWith(color: darkTextColor),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    SizedBox(height: defaultMargin),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              PoliButton('Obgyn', 'assets/icons/poli-obgyn.png',
                                  '/login'),
                              PoliButton('Paru', 'assets/icons/poli-paru.png',
                                  '/login'),
                              PoliButton('Gigi', 'assets/icons/poli-gigi.png',
                                  '/login'),
                              PoliButton('Anak', 'assets/icons/poli-anak.png',
                                  '/login'),
                            ],
                          ),
                          SizedBox(
                            height: defaultMargin,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              PoliButton('Saraf',
                                  'assets/icons/poli-syaraf.png', '/login'),
                              PoliButton('Mata', 'assets/icons/poli-mata.png',
                                  '/login'),
                              PoliButton('Fisio', 'assets/icons/poli-fisio.png',
                                  '/login'),
                              PoliLainnyaButton(
                                  'Lainnya', 'assets/icons/poli-lainnya.png'),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: defaultMargin),
                  ],
                ),
              ),
            );
          },
        );
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
