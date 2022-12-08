import 'package:flutter/material.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/screens/stone_details/stone_details_screen.dart';

class StoneListTile extends StatelessWidget {
  const StoneListTile({super.key, required this.stone});
  final Stone stone;
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
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => StoneDetailsScreen(stone: stone)));
        },
        splashColor: Theme.of(context).colorScheme.primaryContainer,
        splashFactory: InkRipple.splashFactory,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            leading: Hero(
              tag: stone.id,
              child: Image.network(
                stone.imageUrl,
                height: 400,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(stone.name), Text('Added: ${stone.addedDate}')],
            ),
            subtitle: Text(stone.description),
          ),
        ),
      ),
    );
  }
}
