import 'package:flutter_riverpod/flutter_riverpod.dart';

class BingoColumnNumberNotifier extends StateNotifier<int> {
  BingoColumnNumberNotifier() : super(4);

  void selectedColumnNumber(int num) {
    state = num;
  }
}

final bingoColumnNumberProvider =
    StateNotifierProvider<BingoColumnNumberNotifier, int>((ref) {
  return BingoColumnNumberNotifier();
});
