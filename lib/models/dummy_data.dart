import 'package:flutter/foundation.dart';
import 'package:habit_bingo/models/categoryData.dart';
import 'package:habit_bingo/models/habit.dart';
import 'package:habit_bingo/widgets/habit_category_card.dart';

final List<CategoryData> categories = [
  CategoryData(
    categoryName: "WakeUp",
    habits: [
      Habit(habitName: "Wake Up", checkTime: "06:00:00"),
      Habit(habitName: "A Cup of Water", checkTime: "06:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Sleep",
    habits: [
      Habit(habitName: "Stepper", checkTime: "08:00:00"),
      Habit(habitName: "pushUp 10", checkTime: "08:00:00"),
      Habit(habitName: "Shower", checkTime: "08:30:00"),
      Habit(habitName: "Skip breakfast", checkTime: "08:30:00"),
      Habit(habitName: "Reading Book", checkTime: "08:30:00"),
      Habit(habitName: "Drink Water", checkTime: "08:30:00"),
    ],
  ),
  CategoryData(
    categoryName: "Workout",
    habits: [
      Habit(habitName: "Stretch & exercise", checkTime: "15:00:00"),
      Habit(habitName: "Back Stretch", checkTime: "15:00:00"),
      Habit(habitName: "Skip Lunch", checkTime: "15:00:00"),
      Habit(habitName: "Push Up", checkTime: "15:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Snack",
    habits: [
      Habit(habitName: "Skip Snack", checkTime: "15:00:00"),
      Habit(habitName: "Drink Water", checkTime: "15:00:00"),
      Habit(habitName: "Stretch & exercise", checkTime: "15:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Morning",
    habits: [
      Habit(habitName: "Stepper", checkTime: "08:00:00"),
      Habit(habitName: "pushUp 10", checkTime: "08:00:00"),
      Habit(habitName: "Shower", checkTime: "08:30:00"),
    ],
  ),
  CategoryData(
    categoryName: "Lunch",
    habits: [
      Habit(habitName: "Back Stretch", checkTime: "12:00:00"),
      Habit(habitName: "Skip Lunch", checkTime: "12:00:00"),
      Habit(habitName: "Push Up", checkTime: "12:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Afternoon",
    habits: [
      Habit(habitName: "Skip Snack", checkTime: "15:00:00"),
      Habit(habitName: "Drink Water", checkTime: "15:00:00"),
      Habit(habitName: "Stretch & exercise", checkTime: "15:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Evening",
    habits: [
      Habit(habitName: "Over 10000 steps", checkTime: "00:00:00"),
      Habit(habitName: "Writing Journal or Blog", checkTime: "00:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Dinner",
    habits: [
      Habit(habitName: "Drink Water", checkTime: "19:00:00"),
      Habit(habitName: "Not See TV", checkTime: "19:00:00")
    ],
  ),
  CategoryData(
    categoryName: "Night",
    habits: [
      Habit(habitName: "Push Up", checkTime: "22:00:00"),
      Habit(habitName: "Drink Water", checkTime: "18:00:00"),
      Habit(habitName: "Study & Work", checkTime: "18:00:00")
    ],
  ),
  CategoryData(
    categoryName: "BeforeSleep",
    habits: [
      Habit(habitName: "Stepper", checkTime: "08:00:00"),
      Habit(habitName: "pushUp 10", checkTime: "08:00:00"),
      Habit(habitName: "Shower", checkTime: "08:30:00"),
      Habit(habitName: "Reading Book", checkTime: "08:30:00"),
      Habit(habitName: "Drink Water", checkTime: "08:30:00")
    ],
  ),
  CategoryData(
    categoryName: "AllDay",
    habits: [
      Habit(habitName: "Over 10000 steps", checkTime: "00:00:00"),
      Habit(habitName: "Writing Journal or Blog", checkTime: "00:00:00")
    ],
  ),
];
