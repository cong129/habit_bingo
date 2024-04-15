import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_bingo/helpers/random_color_gen.dart';
import 'package:habit_bingo/models/categoryData.dart';
import 'package:habit_bingo/models/habit.dart';
import 'package:habit_bingo/providers/bingo_column_number_provider.dart';
import 'package:habit_bingo/providers/selected_habits_provider.dart';
import 'package:habit_bingo/screens/habits_screen.dart';

class HabitItemCard extends ConsumerWidget {
  const HabitItemCard({
    super.key,
    required this.categoryName,
    required this.habit,
  });
  final String categoryName;
  final Habit habit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boxColor =
        getRandomColor(Theme.of(context).colorScheme.primaryContainer);
    return InkWell(
      onTap: () {
        late Widget snackBarContents;
        final wasSelected = ref
            .read(selectedHabitsProvider.notifier)
            .toggleSelectedHabit(
                CategoryData(categoryName: categoryName, habits: [habit]));
        final selectedHabits = ref.read(selectedHabitsProvider);
        final columnNumber = ref.read(bingoColumnNumberProvider);
        if (selectedHabits.length >= columnNumber * columnNumber) {
          ScaffoldMessenger.of(context).clearSnackBars();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) =>
                  const HabitsScreen(categoryName: "Selected Habits"),
            ),
          );
        } else {
          snackBarContents = Column(
            children: [
              Row(
                children: [
                  Text(
                    wasSelected
                        ? '${habit.habitName} Added'
                        : '${habit.habitName} Removed',
                  ),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                      "${selectedHabits.length}/${columnNumber * columnNumber}habits are selected.")
                ],
              ),
            ],
          );
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: snackBarContents),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
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
        child: Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (checked) {},
            ),
            Column(
              children: [
                Text(
                  habit.habitName,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  habit.checkTime,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
