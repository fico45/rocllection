import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoneDetailsScreen extends StatelessWidget {
  const StoneDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stone details'),
      ),
      body: Center(
        child: Text('Stone details screen!'),
      ),
    );
  }
}
