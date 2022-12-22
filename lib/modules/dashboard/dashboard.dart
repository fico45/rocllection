import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/data/stone/stone_provider.dart';
import 'package:rocllection/modules/dashboard/widgets/stone_list_tile.dart';
import 'package:rocllection/utils/globals.dart';
import 'package:rocllection/widgets/logo.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final stoneProvider = Provider.of<StoneProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async => stoneProvider.loadAllStones(),
        child: ListView(
          children: [
            const Center(
              child: Logo(),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: stoneProvider.stones.length,
              itemBuilder: (context, index) {
                final Stone stone = stoneProvider.stones[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: StoneListTile(
                    stone: Stone(
                        addedDate: stone.addedDate,
                        description: stone.description,
                        id: stone.id,
                        imageUrl: stone.imageUrl,
                        name: stone.name,
                        color: stone.color),
                  ),
                );
              },
            ),
            const SizedBox(
              height: Globals.spacingBelowFormButton,
            )
          ],
        ),
      ),
    );
  }
}
