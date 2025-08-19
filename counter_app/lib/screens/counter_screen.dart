import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key, required this.counter, required this.price});
  String counter;
  String price;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late int count;
  late int capacity;
  double amount = 0;
  int booking = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 0;
    capacity = int.parse(widget.counter);
  }

  _calculateAmount() {
    amount = count * double.parse(widget.price);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Capacity:$capacity'),
              Text('Available:${capacity - booking}'),
              Text('Earnings:${booking * double.parse(widget.price)}'),
            ],
          ),
          Text(count.toString(), style: TextStyle(fontSize: 50)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  count++;
                  setState(() {});
                  _calculateAmount();
                },
                child: Icon(Icons.add, size: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (count > 0) count--;
                  });
                  _calculateAmount();
                },
                child: Icon(Icons.remove, size: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                  _calculateAmount();
                },
                child: Icon(Icons.refresh, size: 30),
              ),
            ],
          ),
          Text('Amount Payable: $amount'),
          ElevatedButton(
            onPressed: () {
              if (count > 0) {
                booking += count;
                count = 0;
                amount = 0;
              }
              setState(() {});
            },
            child: Text('Book ticket'),
          ),
        ],
      ),
    );
  }
}
