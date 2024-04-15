import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_bingo/models/categoryData.dart';

class SelectedHabitsNotifier extends StateNotifier<List<CategoryData>> {
  SelectedHabitsNotifier() : super([]);

  bool toggleSelectedHabit(CategoryData categoryData) {
    final habitIsSelected = state
            .where(
              (item) => (item.categoryName == categoryData.categoryName &&
                  item.habits[0].habitName == categoryData.habits[0].habitName),
            )
            .toList()
            .length ==
        1;
    if (habitIsSelected) {
      state = state
          .where(
            (item) => (item.categoryName != categoryData.categoryName ||
                item.habits[0].habitName != categoryData.habits[0].habitName),
          )
          .toList();
      return false;
    } else {
      state = [...state, categoryData];
      return true;
    }
  }
}

final selectedHabitsProvider =
    StateNotifierProvider<SelectedHabitsNotifier, List<CategoryData>>((ref) {
  return SelectedHabitsNotifier();
});
