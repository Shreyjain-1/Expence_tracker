import 'package:flutter/material.dart';
import 'package:tracker/models/expence_model.dart';

class ExpencexItem extends StatelessWidget {
  const ExpencexItem(this.expence, {super.key});
  final ExpenceModel expence;
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child:Column(
          children: [
            Row(children: [Text(expence.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Spacer(),
            Icon(ExpenceIcon[expence.type])],),
            
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Amount: \$${expence.amount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.date_range, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('${expence.date.day}/${expence.date.month}/${expence.date.year}', style: const TextStyle(fontSize: 16)),
                  ],
                ),  
              ],
            ),  
            ],
        ),
      ));
  }
}
