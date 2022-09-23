import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  const RightBar({Key? key, required this.barwidth}) : super(key: key);
  final double barwidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 30,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
            color: Color(0xD3FFFFFF)
          ),
        )
      ],
    );
  }
}
