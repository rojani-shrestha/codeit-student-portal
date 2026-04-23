import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReceiptDetailsPage extends StatelessWidget {
  const ReceiptDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Receipt Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange.shade700,
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.print, color: Colors.white),
                Text(
                  "Print Receipt",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.orange.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                Text(
                  "Payment Receipt",
                  style: TextStyle(
                    fontSize: 24,
                    //letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Full Stack Web Development in Laravel",
                  style: TextStyle(fontSize: 16),
                ),
                Gap(33),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CODE",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade700,
                      ),
                    ),
                    Icon(Icons.mouse_sharp),
                    Text(
                      "IT",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Gap(43),
                SizedBox(
                  width: 173,
                  height: 190,
                  child: Column(
                    children: [
                      Text("Transaction ID"),
                      Text(
                        "0000000000000",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20),
                      Text("Date"),
                      Text(
                        "20 jan, 2024",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20),
                      Text("Payment Status"),
                      Container(
                        width: 83,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF138023),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.cloud_done_outlined),
                              Gap(10),
                              Text("Paid"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  // width: 390,
                  // height: 170,
                  child: Padding(
                    // padding: const EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Student Details",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(15),
                        Row(
                          children: [
                            Text("Full Name:"),
                            Gap(30),
                            Text("Full Name"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("WhatsApp:"),
                            Gap(30),
                            Text("0000000000"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Email:"),
                            Gap(30),
                            Text("example@gmail.com"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Institution:"),
                            Gap(30),
                            Text("Code IT"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(23),
                SizedBox(
                  // height: 220,
                  // width: 390,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course Details",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(15),
                        Card(
                          elevation: 4,
                          surfaceTintColor:
                              Colors.greenAccent, // card vitra ko color
                          shadowColor: Colors.orange.shade700,
                          // color: Colors.orange.shade400,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Enrolled Course"),
                                Text(
                                  "Web Design",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Amount Paid:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Text(
                                      "Rs.1999/-",
                                      style: TextStyle(
                                        color: Colors.orange.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(24),
                SizedBox(
                  height: 143,
                  width: 390,
                  child: Column(
                    children: [
                      Text(
                        "Thank you for choosing CODE IT. This is a",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "computer-generated receipt.",
                        style: TextStyle(fontSize: 14),
                      ),
                      Gap(8),
                      Text(
                        "For any queries, contact",
                        style: TextStyle(fontSize: 14),
                      ),
                      Gap(8),
                      Text(
                        "support@codeit.com.np | Reg No.",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "11757/6371/04 | PAN 602345817",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
