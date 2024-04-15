import 'package:flutter/material.dart';

class AppbarHabitBingo extends StatelessWidget implements PreferredSizeWidget {
  const AppbarHabitBingo({super.key, this.title = "Habit Bingo"});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
