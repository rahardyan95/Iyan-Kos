import 'package:flutter/material.dart';
import 'package:iyan_kos/theme.dart';

class FacilitiesItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  // ignore: use_super_parameters
  const FacilitiesItem({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl, width: 32),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}