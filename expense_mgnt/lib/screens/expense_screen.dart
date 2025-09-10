import 'dart:developer';

import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  String selType = "Expense";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('Balance : 88888', style: TextStyle(fontSize: 30)),
            Expanded(
              child: ListView.builder(
                itemBuilder:
                    (context, index) => ListTile(
                      title: Text('Title'),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Type'), Text('Amount')],
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder:
                  (context) => StatefulBuilder(
                    builder:
                        (context, setModalState) => Container(
                          color: const Color.fromARGB(255, 233, 230, 230),
                          // height: 200,
                          width: MediaQuery.of(context).size.width * 0.99,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Add/Edit Expense'),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Title',
                                  ),
                                ),
                                SizedBox(height: 5),
                                DropdownButton(
                                  value: selType,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Expense'),
                                      value: "Expense",
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Income'),
                                      value: "Income",
                                    ),
                                  ],
                                  onChanged: (v) {
                                    selType = v!;
                                    log(selType);
                                    setModalState(() {});
                                    setState(() {});
                                  },
                                ),
                                SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Amount',
                                  ),
                                ),
                                SizedBox(height: 5),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Add'),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
