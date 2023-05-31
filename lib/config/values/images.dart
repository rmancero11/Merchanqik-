import 'package:flutter/material.dart';

String qikLogoAsset = 'assets/images/qik-logo.svg';
String ecFlagAsset = 'assets/images/ec.svg';
String businessLogo = 'https://i.postimg.cc/2jZgq8CN/Logo-Burger-King.png';
String invoiceAsset = 'assets/images/user_final/invoice.svg';
String qikPointsAsset = 'assets/images/user_final/qik-points.svg';
String rocketAsset = 'assets/images/user_final/rocket.png';
String businessCover = 'assets/images/user_final/bgk-bkg.jpg';
String healthAndBeauty = 'assets/images/user_final/spa.jpg';
String spaLogo = 'assets/images/user_final/spa-logo.png';
String spaCover = 'assets/images/user_final/spa-cover.jpg';
String hero = 'assets/images/user_final/hero.jpg';

Widget businessAsset(
        {String? logo, double? width, double? height, String? semanticLabel}) =>
    Image.network(
      logo ?? businessLogo,
      width: width,
      height: height,
      fit: BoxFit.cover,
      semanticLabel: semanticLabel,
    );
