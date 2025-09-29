import 'package:flutter/material.dart';

class RadioTestScreen extends StatefulWidget {
  const RadioTestScreen({super.key});

  @override
  State<RadioTestScreen> createState() => _RadioTestScreenState();
}

class _RadioTestScreenState extends State<RadioTestScreen> {
  String selVal = "GST";
  TextEditingController txtProd = TextEditingController();
  TextEditingController txtQty = TextEditingController();
  TextEditingController txtRate = TextEditingController();
  TextEditingController txtAmnt = TextEditingController();
  TextEditingController txtGstPer = TextEditingController();
  double cgst = 0;
  double sgst = 0;
  double gtotal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: "GST",
                              groupValue: selVal,
                              onChanged: (v) {
                                selVal = v!;
                                setState(() {});
                              },
                            ),
                            Text('GST'),
                          ],
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text("Without GST"),
                            value: "WGST",
                            groupValue: selVal,
                            onChanged: (v) {
                              selVal = v!;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: txtProd,
                      decoration: InputDecoration(
                        hintText: "Enter Product",
                        labelText: "Enter Product",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: txtQty,
                      decoration: InputDecoration(
                        hintText: "Enter Qty",
                        labelText: "Enter Qty",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: txtRate,
                      decoration: InputDecoration(
                        hintText: "Enter rate",
                        labelText: "Enter rate",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: txtAmnt,
                      decoration: InputDecoration(
                        hintText: "Enter amount",
                        labelText: "Enter amount",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),
                    if (selVal == 'GST')
                      TextField(
                        controller: txtGstPer,
                        decoration: InputDecoration(
                          hintText: "Enter GST%",
                          labelText: "Enter GST%",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // calculate logic
                        double amnt = double.parse(txtAmnt.text);
                        if (selVal == "GST") {
                          double gstP = double.parse(txtGstPer.text);
                          cgst = amnt * 0.01 * gstP * 0.5;
                          sgst = amnt * 0.01 * gstP * 0.5;
                          gtotal = amnt + cgst + sgst;
                        } else {
                          gtotal = amnt;
                        }
                        setState(() {});
                      },
                      child: Text('Calculate'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.lightGreenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('CGST: ${cgst.toStringAsFixed(2)}'),
                    Text('SGST: ${sgst.toStringAsFixed(2)}'),
                    Text('IGST: ${(sgst + cgst).toStringAsFixed(2)}'),
                    Text('Grand Total: ${gtotal.toStringAsFixed(2)}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
