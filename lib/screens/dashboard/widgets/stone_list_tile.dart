import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoneListTile extends StatelessWidget {
  const StoneListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {},
        splashColor: Theme.of(context).colorScheme.primaryContainer,
        splashFactory: InkRipple.splashFactory,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            leading: Image.network(
              'https://www.stockvault.net/data/2012/09/10/135306/thumb16.jpg',
              height: 400,
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Stone name'),
                const Text('Added: 10/11/2022')
              ],
            ),
            subtitle: const Text('Short description of the stone'),
          ),
        ),
      ),
    );
  }
}
