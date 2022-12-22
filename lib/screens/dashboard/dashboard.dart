import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/data/stone/stone_provider.dart';
import 'package:rocllection/screens/dashboard/widgets/stone_list_tile.dart';
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
      body: RefreshIndicator(
        onRefresh: () async => stoneProvider.loadAllStones(),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: stoneProvider.stones.length,
          itemBuilder: (context, index) {
            final Stone stone = stoneProvider.stones[index];
            print(index);
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
      ),
    );
  }
}
