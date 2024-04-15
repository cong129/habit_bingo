import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_bingo/helpers/random_color_gen.dart';
import 'package:habit_bingo/widgets/appbar_habit_bingo.dart';
import 'package:habit_bingo/widgets/habit_category_card.dart';
import 'package:habit_bingo/providers/habit_provider.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitProvider);
    return Scaffold(
      appBar: const AppbarHabitBingo(title: "Category"),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: habits.length,
        itemBuilder: (context, index) => HabitCategoryCard(
          index: index,
        ),
      ),
    );
  }
}
