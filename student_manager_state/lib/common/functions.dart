// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final H;
  final W;
  const Gap({Key? key, double this.H = 0, double this.W = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: H,
      width: W,
    );
  }
}
