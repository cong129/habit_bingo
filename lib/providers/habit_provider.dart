import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:habit_bingo/models/dummy_data.dart";

final habitProvider = Provider((ref) {
  return categories;
});
