// import 'package:flutter/material.dart';

// class AddTransaction extends StatelessWidget {
//   AddTransaction({super.key});
//   TextEditingController titleTxtCntrl = TextEditingController();

//   TextEditingController amountTxtCntrl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//             children: [
//               TextField(
//                 controller: titleTxtCntrl,
//                 decoration: InputDecoration(
//                   hintText: 'Enter Title',
//                   labelText: 'Title',
//                 ),
//               ),
//               TextField(
//                 controller: amountTxtCntrl,
//                 decoration: InputDecoration(
//                   hintText: 'Enter Amount',
//                   labelText: 'Amount',
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   if(titleTxtCntrl.text.isNotEmpty && amountTxtCntrl.text.isNotEmpty)
//                   {
//                     transactions.add(
//                     Transaction(
//                       title: titleTxtCntrl.text,
//                        amount: double.parse(amountTxtCntrl.text)
//                        )
//                        );
//                        titleTxtCntrl.clear();
//                        amountTxtCntrl.clear();
//                        setState(() {
                         
//                        });
//                        print(transactions.length);
//                   }
//                 },
//                child: Text('Add'),),
//             ],
//           );
//   }
// }