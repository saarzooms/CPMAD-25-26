import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> frequency = ["All", "Daily", "Weekly", "Monthly", "Yearly"];
  int selectedFreqIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello,', style: TextStyle(fontSize: 20)),
                    Text(
                      'David',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              ],
            ),
            //for clips / categories
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: frequency.length,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              // index == selectedFreqIndx
                              //     ? Colors.yellow
                              //     :
                              Colors.white,
                          border: Border.all(
                            width: 1,
                            color:
                                index == selectedFreqIndx
                                    ? Color.fromARGB(255, 138, 137, 136)
                                    : Color.fromARGB(255, 207, 192, 192),
                          ),
                        ),

                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16,
                        ),
                        child: Text(frequency[index]),
                      ),
                    ),
              ),
            ),
            // container with chart
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 239, 240),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 20,
                                color: const Color.fromARGB(255, 188, 209, 219),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Income',
                                style: TextStyle(
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$8,459',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 20,
                                color: const Color.fromARGB(255, 188, 209, 219),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Spent',
                                style: TextStyle(
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$8,459',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Row for recent transaction title and see all button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions'),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  // width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    children: [Text('See all'), Icon(Icons.navigate_next)],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder:
                    (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[50],
                      ),
                      child: Row(
                        children: [
                          Container(color: Colors.amber, height: 50, width: 50),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
