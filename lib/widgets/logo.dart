import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 350,
        child: Image.asset(
          'assets/logo/logo.png',
          height: 300,
          width: 350,
        ));
  }
}
