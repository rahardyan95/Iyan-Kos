import 'package:flutter/material.dart';
import 'package:iyan_kos/theme.dart';
import 'package:iyan_kos/models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard({super.key, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.chevron_right, color: greyColor),
          onPressed: () {},
        ),
      ],
    );
  }
}