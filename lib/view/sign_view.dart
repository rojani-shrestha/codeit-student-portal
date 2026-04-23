import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CreatepageView extends StatefulWidget {
  const CreatepageView({super.key});

  @override
  State<CreatepageView> createState() => _createpageViewState();
}

class _createpageViewState extends State<CreatepageView> {
  bool isHidden = true;
  bool isLoading = false;

  String name = "";
  String email = "";
  String phone = "";
  String password = "";

  Future<void> createAccount() async {
    // ✅ Validation
    if (name.isEmpty || email.isEmpty || phone.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all fields")),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    // ⚠️ Change this if using real device
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

      print("Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      dynamic data;
      try {
        data = jsonDecode(response.body);
      } catch (e) {
        data = {};
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Account Created Successfully")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["message"] ?? "Server Error")),
        );
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Network error")),
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
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ✅ Make sure image path is correct
                Image.asset("assets/image/screenshot.png"),

                const SizedBox(height: 10),

                const Text(
                  "Create a student account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const Text("Join Code IT student portal"),

                const SizedBox(height: 20),

                // Name
                TextField(
                  onChanged: (value) => name = value,
                  decoration: InputDecoration(
                    labelText: "Enter your full name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Email
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => email = value,
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Phone
                TextField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) => phone = value,
                  decoration: InputDecoration(
                    labelText: "WhatsApp Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Password
                TextField(
                  obscureText: isHidden,
                  onChanged: (value) => password = value,
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      icon: Icon(
                        isHidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Button
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: isLoading ? null : createAccount,
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Create Account",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account?"),
                    SizedBox(width: 10),
                    Text(
                      "Sign in",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Text("© 2026 Code IT. All rights reserved.")
              ],
            ),
          ),
        ),
      ),
    );
  }
}