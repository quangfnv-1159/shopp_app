import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.icon = '',
  }) : super(key: key);

  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration:
          BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
      child: SvgPicture.asset(icon),
    );
  }
}
