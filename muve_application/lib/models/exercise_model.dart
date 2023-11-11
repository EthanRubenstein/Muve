import "package:muve_application/models/set_model.dart";

class Exercise {
  final int id;
  final String? name;
  final String? notes;
  final List<ExerciseSet>? sets;

  Exercise({required this.id, this.name, this.notes, this.sets});

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
        id: json['id'],
        name: json['name'],
        notes: json['notes'],
        sets: List<ExerciseSet>.from(json['sets']));
  }
}
