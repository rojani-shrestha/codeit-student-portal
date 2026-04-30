import 'package:flutter/material.dart';

class ResetView extends StatefulWidget {
  const ResetView({super.key});

  @override
  State<ResetView> createState() => _ResetViewState();
}

class _ResetViewState extends State<ResetView> {
  bool ishidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/Screenshot 2026-04-02 190631.png",
                      ),
                    ),

                    Center(
                      child: Text(
                        "Reset your password",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Center(child: Text("Please enter your new password")),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Text("New password"),
                        Text("*", style: TextStyle(color: Colors.red)),
                      ],
                    ),

                    SizedBox(height: 5),

                    TextField(
                      obscureText: ishidden,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ishidden = !ishidden;
                            });
                          },
                          icon: Icon(
                            ishidden ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),

                    // SizedBox(height: 10),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text("Confirm password"),
                        Text("*", style: TextStyle(color: Colors.red)),
                      ],
                    ),

                    // SizedBox(height: 5),
                    SizedBox(height: 10),

                    TextField(
                      obscureText: ishidden,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ishidden = !ishidden;
                            });
                          },
                          icon: Icon(
                            ishidden ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Text("Your password must contain"),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.deepOrange),
                        Text("At least 6 character"),
                      ],
                    ),

                    SizedBox(height: 30),

                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
