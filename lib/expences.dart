import 'package:flutter/material.dart';
import 'package:tracker/chart/chart.dart';
import 'package:tracker/expences_list/expences_list.dart';
import 'package:tracker/models/expence_model.dart';
import 'package:tracker/new_expence.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});
  @override
  State<Expences> createState() {
    return _ExpencesState();
  }
}

class _ExpencesState extends State<Expences> {
  void _removeExpence(ExpenceModel expence) {
    final indexExpence = registeredExpences.indexOf(expence);
    setState(() {
      registeredExpences.remove(expence);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Removed ${expence.title}"),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              registeredExpences.insert(indexExpence, expence);
            });
          },
        ),
      ),
    );
  }

  final List<ExpenceModel> registeredExpences = [
    ExpenceModel(
      title: "Lunch",
      amount: 15.50,
      date: DateTime.now(),
      type: ExpenceType.food,
    ),
    ExpenceModel(
      title: "Bus Ticket",
      amount: 2.75,
      date: DateTime.now().subtract(Duration(days: 1)),
      type: ExpenceType.travel,
    ),
    ExpenceModel(
      title: "Movie Night",
      amount: 12.00,
      date: DateTime.now().subtract(Duration(days: 2)),
      type: ExpenceType.leisure,
    ),
    ExpenceModel(
      title: "Office Supplies",
      amount: 45.00,
      date: DateTime.now().subtract(Duration(days: 3)),
      type: ExpenceType.work,
    ),
  ];
  void _InputOverlay() {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) => NewExpence(
        onAddExpence: (NewExpence) {
          setState(() {
            registeredExpences.add(NewExpence);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mainContent = registeredExpences.isEmpty
        ? const Center(child: Text("No expences found."))
        : ExpencesList(
            expencesList: registeredExpences,
            onRemoveExpence: _removeExpence,
          );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expences Tracker"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: _InputOverlay, icon: const Icon(Icons.add)),
        ],
      ),
      body: width < 600
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children: [
                const SizedBox(height: 16),
                Chart(expenses: registeredExpences),
                Expanded(child: mainContent),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 16),
                Expanded(child: Chart(expenses: registeredExpences)),
                Expanded(child: mainContent),
              ],
            ),
    );
  }
}
