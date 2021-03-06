import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.moreTitle,
    required this.press,
  }) : super(key: key);

  final String title, moreTitle;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.black),
        ),
        GestureDetector(
          onTap: press,
          child: Text(moreTitle,
              style: TextStyle(
                color: Color(0xFFBBBBBB),
              )),
        )
      ],
    );
  }
}
