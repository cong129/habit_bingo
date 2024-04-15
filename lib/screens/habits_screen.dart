import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_bingo/models/categoryData.dart';
import 'package:habit_bingo/models/dummy_data.dart';
import 'package:habit_bingo/models/habit.dart';
import 'package:habit_bingo/providers/selected_habits_provider.dart';
import 'package:habit_bingo/widgets/appbar_habit_bingo.dart';
import 'package:habit_bingo/widgets/habit_item_card.dart';
import 'package:habit_bingo/providers/habit_provider.dart';

class HabitsScreen extends ConsumerWidget {
  const HabitsScreen({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late List<CategoryData> allHabits;
    late List<Habit> habits;
    if (categoryName == "Selected Habits") {
      allHabits = ref.watch(selectedHabitsProvider);
      habits = allHabits.map((e) => e.habits[0]).toList();
    } else {
      allHabits = ref.watch(habitProvider);
      habits = allHabits
          .where((e) => e.categoryName == categoryName)
          .toList()[0]
          .habits;
    }
    return Scaffold(
      appBar: AppbarHabitBingo(title: categoryName),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ...habits.map(
            (e) => HabitItemCard(
              categoryName: categoryName,
              habit: e,
            ),
          ),
        ],
      ),
    );
  }
}
