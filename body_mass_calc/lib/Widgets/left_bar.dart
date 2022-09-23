import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({Key? key, required this.barwidth}) : super(key: key);
  final double barwidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            color: Color(0xD3FFFFFF)
          ),
        )
      ],

    );
  }
}
