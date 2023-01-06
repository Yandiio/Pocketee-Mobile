import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/theme.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(23),
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
                      image: AssetImage('assets/icon_transaction.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Electronic Products",
                        style: blackStyleText.copyWith(
                            fontSize: 14, fontWeight: semiBold)),
                    Text(
                      "10 Apr, 08:37",
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
              style: redStyleText.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          ),
        ],
      ),
    );
  }
}
