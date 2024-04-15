import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_bingo/helpers/random_color_gen.dart';
import 'package:habit_bingo/providers/habit_provider.dart';
import 'package:habit_bingo/screens/habits_screen.dart';

class HabitCategoryCard extends ConsumerWidget {
  const HabitCategoryCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitProvider);
    final boxColor =
        getRandomColor(Theme.of(context).colorScheme.primaryContainer);

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) =>
                HabitsScreen(categoryName: habits[index].categoryName),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: boxColor,
          gradient: LinearGradient(
            colors: [
              boxColor.withOpacity(0.5),
              boxColor.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Text(
              habits[index].categoryName,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
