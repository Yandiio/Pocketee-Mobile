import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/theme.dart';

class WalletCard extends StatelessWidget {
  final String walletName;
  final String amount;
  final Color walletColor;

  const WalletCard(
      {super.key,
      required this.walletName,
      required this.walletColor,
      this.amount = '0'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 198.0,
      decoration: BoxDecoration(
        color: walletColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 21.0,
                  width: 32.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_master.png'))),
                ),
                Container(
                  height: 29.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_cc.png'))),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rp. ${this.amount}",
                  style: whiteStyleText.copyWith(
                      fontSize: 22, fontWeight: semiBold),
                ),
                Text(
                  "${this.walletName}",
                  style:
                      whiteStyleText.copyWith(fontSize: 18, fontWeight: medium),
                ),
              ],
            ),
            SizedBox(
              height: 37,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CARD NO.",
                  style:
                      whiteStyleText.copyWith(fontSize: 12, fontWeight: medium),
                ),
                Text(
                  "XXX 001",
                  style:
                      whiteStyleText.copyWith(fontSize: 18, fontWeight: medium),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
