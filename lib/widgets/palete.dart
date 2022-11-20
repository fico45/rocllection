import 'package:flutter/material.dart';

class Palete extends StatelessWidget {
  const Palete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                color: Theme.of(context).colorScheme.primary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onPrimary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                height: 70,
                width: 90,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Theme.of(context).colorScheme.secondary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onSecondary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.secondaryContainer,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                height: 70,
                width: 90,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Theme.of(context).colorScheme.tertiary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onTertiary,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                height: 70,
                width: 90,
              ),
              Container(
                color: Theme.of(context).colorScheme.onTertiaryContainer,
                height: 70,
                width: 90,
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
