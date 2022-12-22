import 'package:flutter/material.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/modules/stone/stone_details/stone_details_screen.dart';
import 'package:rocllection/utils/globals.dart';

class StoneListTile extends StatelessWidget {
  const StoneListTile({super.key, required this.stone});
  final Stone stone;
  static const double imageWidth = 100;
  static const double imageHeight = 110;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Color(int.parse(stone.color)).withOpacity(0.1),
            Color(int.parse(stone.color)).withOpacity(0.8),
          ],
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        borderRadius: Globals.listTileBorderRadius,
      ),
      child: Material(
        borderRadius: Globals.listTileBorderRadius,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: Globals.listTileBorderRadius,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => StoneDetailsScreen(stone: stone)));
          },
          splashColor: Theme.of(context)
              .colorScheme
              .onTertiaryContainer
              .withOpacity(0.4),
          splashFactory: InkRipple.splashFactory,
          child: Padding(
              padding: Globals.listTilePadding,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: stone.id,
                        child: ClipRRect(
                          borderRadius: Globals.listTileBorderRadius,
                          child: Image.network(
                            stone.imageUrl,
                            width: imageWidth,
                            height: imageHeight,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: Globals.itemtemSpacing),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              stone.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              stone.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Added on: ${stone.addedDate}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
