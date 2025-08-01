import 'package:flutter/material.dart';
import 'package:tracker/models/expence_model.dart';
import 'expencex_item.dart';

class ExpencesList extends StatelessWidget {
  const ExpencesList({super.key, required this.expencesList, required this.onRemoveExpence});
  final List<ExpenceModel> expencesList;
  final Function(ExpenceModel) onRemoveExpence;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expencesList.length,
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12), // or use the extraction above
          ),
          margin: Theme.of(context).cardTheme.margin,
        ),
        key: ValueKey(expencesList[index]),
        onDismissed: (direction) {
          onRemoveExpence(expencesList[index]);
        },
        child: ExpencexItem(expencesList[index]),
      ),
    );
  }
}
