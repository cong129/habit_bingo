class Habit {
  Habit({
    required this.selected,
    required this.habitName,
    required this.checkTime,
  });

  final bool selected;
  final String habitName;
  final String checkTime;

  factory Habit.fromJson(Map<String, dynamic> json) {
    return Habit(
      selected: json['selected'] as bool,
      habitName: json['habitName'] as String,
      checkTime: json['checkTime'] as String,
    );
  }
}
