import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

enum ExpenceType { food, travel, leisure, work }

const ExpenceIcon = {
  ExpenceType.food: Icons.fastfood,
  ExpenceType.travel: Icons.directions_bus,
  ExpenceType.leisure: Icons.nightlife,
  ExpenceType.work: Icons.work,
};
final uuid = Uuid();

class ExpenceModel {
  ExpenceModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenceType type;
}

class ExpenceBucket {
  ExpenceBucket({required this.expences, required this.type});

  ExpenceBucket.forType(this.type, List<ExpenceModel> allExpences)
    : expences = allExpences.where((expence) => expence.type == type).toList();

  final List<ExpenceModel> expences;
  final ExpenceType type;
  double get totalAmount {
    return expences.fold(0.0, (sum, expence) => sum + expence.amount);
  }
}
