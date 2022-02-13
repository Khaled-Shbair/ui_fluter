import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    Key? key,
    this.margin = 0.0,
    required this.selected,
  }) : super(key: key);
  final double margin;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: margin),
      width: 17,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selected ? const Color(0xFF6A90F2) : Colors.grey.shade400,
      ),
    );
  }
}
