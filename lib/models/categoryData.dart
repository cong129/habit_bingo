import 'package:flutter/material.dart';
import 'package:habit_bingo/models/habit.dart';

class CategoryData {
  const CategoryData({
    required this.categoryName,
    required this.habits,
  });

  final String categoryName;
  final List<Habit> habits;

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
      categoryName: json['categoryName'] as String,
      habits: json['habits'].map((item) => Habit.fromJson(item)).toList(),
    );
  }
}
