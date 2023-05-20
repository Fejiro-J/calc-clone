import 'package:flutter/material.dart';

class Ymargin extends StatelessWidget {
  const Ymargin({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
