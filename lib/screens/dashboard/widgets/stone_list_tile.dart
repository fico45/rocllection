import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoneListTile extends StatelessWidget {
  const StoneListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).colorScheme.primaryContainer,
      splashFactory: InkRipple.splashFactory,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://www.stockvault.net/data/2012/09/10/135306/thumb16.jpg',
            height: 400,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: const Text('Stone name'),
        subtitle: const Text('Short description of the stone'),
      ),
    );
  }
}
