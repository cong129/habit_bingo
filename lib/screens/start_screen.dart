import 'package:flutter/material.dart';
import 'package:habit_bingo/screens/category_screen.dart';
import 'package:habit_bingo/widgets/appbar_habit_bingo.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  // final data = load

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHabitBingo(),
      body: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: Center(
          child: ElevatedButton(
              child: const Text("Start"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const CategoryScreen()),
                );
              }),
        ),
      ),
    );
  }
}
