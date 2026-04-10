import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CreatepageView extends StatefulWidget {
  const CreatepageView({super.key});

  @override
  State<CreatepageView> createState() => _createpageViewState();
}

class _createpageViewState extends State<CreatepageView> {
  bool ishidden = true;
  bool isLoading = false;

  // ✅ Variables instead of controllers
  String name = "";
  String email = "";
  String phone = "";
  String password = "";

  // ✅ API Function
  Future<void> createAccount() async {
    setState(() {
      isLoading = true;
    });

     var url = Uri.parse("http://10.0.2.2:3000/register");  
    try {
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": name,
          "email": email,
          "phone": phone,
          "password": password,
        }),
      );

      var data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Account Created Successfully")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["message"] ?? "Error")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Something went wrong")),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 360,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),

                Text("Create a student account",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                Text("Join Code IT student portal"),

                SizedBox(height: 20),

                // ✅ Name
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter your full name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // ✅ Email
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // ✅ Phone
                TextField(
                  onChanged: (value) {
                    phone = value;
                  },
                  decoration: InputDecoration(
                    labelText: "WhatsApp Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // ✅ Password
                TextField(
                  obscureText: ishidden,
                  onChanged: (value) {
                    password = value;
                  },
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
                        ishidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // ✅ Button
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: isLoading ? null : createAccount,
                    child: isLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text("Create Account",
                            style: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(width: 10),
                    Text("Sign in",
                        style: TextStyle(color: Colors.deepOrange)),
                  ],
                ),

                SizedBox(height: 20),

                Text("© 2026 Code IT. All rights reserved.")
              ],
            ),
          ),
        ),
      ),
    );
  }
}