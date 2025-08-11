import 'package:flutter/material.dart';

import '../../models/transaction.dart';

Widget transactionItemCard(Transaction transaction){
  return Card(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${transaction.title}'),
                    Text('${transaction.amount}'),
                  ],
                )
              );
}