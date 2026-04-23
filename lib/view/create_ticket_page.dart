import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class CreateTicketPage extends StatefulWidget {
  const CreateTicketPage({super.key});

  @override
  State<CreateTicketPage> createState() => _CreateTicketPageState();
}

class _CreateTicketPageState extends State<CreateTicketPage> {
  String? selectedValue;

  List<String> supportTicket = [
    "General support",
    "Technical support",
    "Counselling support",
    "Internship support",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange.shade100,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Create Support Ticket",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "Describe your issue -- we'll respond as",
              style: TextStyle(fontSize: 16),
            ),
            Text("soon as possible.", style: TextStyle(fontSize: 16)),
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.airplane_ticket, color: Colors.orange.shade700),
                  Text(
                    "Ticket Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              height: 470,
              width: 315,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Card(
                    elevation: 3,
                    child: DropdownButtonFormField<String>(
                      initialValue: selectedValue,
                      hint: Text("Select Support"),
                      items: supportTicket.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                  Gap(20),

                  Row(
                    children: [
                      Text(
                        "Subject",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Card(
                      elevation: 3,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("e.g. Cannot access courses..."),
                      ),
                    ),
                  ),
                  Gap(30),
                  Row(
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Container(
                    //height: 153,
                    width: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Card(
                      elevation: 3,
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Please explain the error",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Gap(23),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade700,
                    ),
                    onPressed: () {
                      print("Ticket created successfull!");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send, color: Colors.white),
                        Gap(5),
                        Text(
                          "Submit Ticket",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
