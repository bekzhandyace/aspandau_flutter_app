import 'package:flutter/material.dart';

class HorizontalListCustomButton extends StatefulWidget {
  final Widget title;
  final Decoration decoration;
  final double width;
  final ButtonStyle style;
  const HorizontalListCustomButton({
    super.key,
    required this.title,
    required this.width,
    required this.style,
    required this.decoration,
  });

  @override
  State<HorizontalListCustomButton> createState() =>
      _HorizontalListCustomButtonState();
}

class _HorizontalListCustomButtonState
    extends State<HorizontalListCustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: widget.width,
      child: Container(
        decoration: widget.decoration,
        child: ElevatedButton(
          onPressed: () {},
          style: widget.style,
          child: widget.title,
        ),
      ),
    );
  }
}
