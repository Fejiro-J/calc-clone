import 'package:flutter/material.dart';

class Xmargin extends StatelessWidget {
  const Xmargin({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
