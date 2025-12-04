import 'package:flutter/material.dart';
import 'players_screen.dart';
import 'match_screen.dart';
import 'stats_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kézilabda mérkőzés Statisztika')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          ElevatedButton.icon(icon: const Icon(Icons.add), label: const Text('Új mérkőzés'), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MatchScreen()))),
          const SizedBox(height:12),
          ElevatedButton.icon(icon: const Icon(Icons.list), label: const Text('Játékoslista'), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PlayersScreen()))),
          const SizedBox(height:12),
          ElevatedButton.icon(icon: const Icon(Icons.bar_chart), label: const Text('Statisztikák'), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const StatsScreen()))),
        ]),
      ),
    );
  }
}
