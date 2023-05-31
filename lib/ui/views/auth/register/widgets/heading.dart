import 'package:merchan/config/config.dart';
import 'package:flutter/material.dart';
import 'package:merchan/constants/constants.dart';

class HeaderMerchant extends StatelessWidget {
  const HeaderMerchant({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: titleStyle(
                weight: FontWeight.w300,
                size: baseScalingFactor * responsive.height()),
            children: const [
              TextSpan(
                text: 'Crea tu cuenta ',
              ),
              TextSpan(
                text: 'GRATIS',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: qLightBlueColor, // Cambia el color a tu elección
                ),
              ),
              TextSpan(
                text: '\n sin complicaciones',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
