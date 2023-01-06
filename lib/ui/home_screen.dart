import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pocketee_mobile/theme/theme.dart';
import 'package:pocketee_mobile/widgets/history_list.dart';
import 'package:pocketee_mobile/widgets/wallet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: 16.0,
          right: 27.0,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    height: 33,
                    width: 61,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile.png')),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: greyStyleText.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                      Text(
                        "IDR 4,830.00",
                        style: blackStyleText.copyWith(
                            fontSize: 22, fontWeight: bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_search.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_notification.png'),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget home() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // My Wallet Section
          Container(
            margin: const EdgeInsets.only(
              left: 29.0,
              right: 27.0,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Text(
                    "My Wallet",
                    style:
                        blackStyleText.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 21.0,
                    width: 21.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/icon_arrow.png'),
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          // Horizontal Scroll Section
          Container(
            width: double.infinity,
            height: 230.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WalletCard(
                  amount: "150.000,00",
                  walletName: "Tabungan",
                  walletColor: kPrimaryColor,
                ),
                WalletCard(
                  amount: "30.000,00",
                  walletName: "Uang Haji",
                  walletColor: kRedColor,
                ),
                WalletCard(
                  amount: "30.000,00",
                  walletName: "Hape Aipon",
                  walletColor: kGreenColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // Last Transaction Section
          Container(
            margin: const EdgeInsets.only(
              left: 29.0,
              right: 27.0,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Text(
                    "Last Transcations",
                    style: blackStyleText.copyWith(
                        fontSize: 24, fontWeight: medium),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 21.0,
                    width: 21.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_arrow.png'))),
                  ),
                ),
              ],
            ),
          ),
          // Vertical Scroll Section
          HistoryList(),
          Container(
            padding: EdgeInsets.only(left: 23, right: 23),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_fuel.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isi Bensin Kerang",
                              style: blackStyleText.copyWith(
                                  fontSize: 14, fontWeight: semiBold)),
                          Text(
                            "11 Apr, 08:37",
                            style: greyStyleText.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "-Rp. 187.000",
                    style: redStyleText.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 23, left: 23, right: 23),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_shopping.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shopping",
                              style: blackStyleText.copyWith(
                                  fontSize: 14, fontWeight: semiBold)),
                          Text(
                            "11 Apr, 08:37",
                            style: greyStyleText.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "-Rp. 187.000",
                    style: redStyleText.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 23, left: 23, right: 23),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_plane.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jual Tiket Pesawat",
                              style: blackStyleText.copyWith(
                                  fontSize: 14, fontWeight: semiBold)),
                          Text(
                            "11 Apr, 08:37",
                            style: greyStyleText.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "+Rp. 18.700",
                    style: greenStyleText.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return ListView(
      children: [
        header(),
        SizedBox(
          height: 30,
        ),
        home(),
      ],
    );
  }
}
