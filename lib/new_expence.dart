

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker/models/expence_model.dart';
import 'package:flutter/foundation.dart';


class NewExpence extends StatefulWidget {
  final void Function(ExpenceModel) onAddExpence;
  const NewExpence({super.key, required this.onAddExpence});

  @override
  State<NewExpence> createState() {
    return _NewExpenceState();
  }
}

class _NewExpenceState extends State<NewExpence> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  ExpenceType? _selectedType;

  void SubmitExpence(){
    var amountIsValid = double.tryParse(_amountController.text.trim()) != null;
    if(_titleController.text.isEmpty || !amountIsValid || _selectedType == null || _selectedDate == null){
      _showDialog();
      return;
    }
    Navigator.pop(context);
    
      widget.onAddExpence(
        ExpenceModel(
          title: _titleController.text,
          amount: double.parse(_amountController.text),
          date: _selectedDate!,
          type: _selectedType!,
        ),
      );
      _titleController.clear();
      _amountController.clear();
      _selectedDate = null;
      _selectedType = null;    
  }
  void _showDialog(){
    if(!kIsWeb && Theme.of(context).platform == TargetPlatform.iOS){
      showCupertinoDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Invalid Input"),
          content: Text("Please fill all fields correctly."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),        
      );
    }
    else{
      showDialog(context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Invalid Input"),
          content: Text("Please fill all fields correctly."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );      
    }
  }

  void DatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1);
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: now,
      initialDate: now,
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {    
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return SingleChildScrollView(
      child: Padding(
        
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16+ keyboardHeight),
        child: Column(          
          children: [
            TextField(
              controller: _titleController,
              maxLength: 50,
              decoration: InputDecoration(label: Text("Title")),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _amountController,
              maxLength: 5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(label: Text("Amount (\$)")),
            ),
            Row(
              children: [
                DropdownButton<ExpenceType>(
                  hint: Text("Select Type"),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  style: Theme.of(context).textTheme.bodyLarge,
                  borderRadius: BorderRadius.circular(8),
                  value: _selectedType,
                  items: ExpenceType.values
                      .map(
                        (type) => DropdownMenuItem(
                          value: type,
                          child: Text(
                            type.name[0].toUpperCase() +
                                type.name.substring(1).toLowerCase(),
                          ),
                        ),
                      ).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedType = value!;
                    });
                  },
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _selectedDate != null
                            ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                            : "Select Date",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      IconButton(
                        onPressed: DatePicker,
                        icon: Icon(Icons.calendar_month),
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  ),
                  onPressed: () {
                    SubmitExpence();
                  },
                  child: Text("Save Expence"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}