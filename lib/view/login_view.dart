
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isclick= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),
          Text("welcome Back!",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Text("sign in to your student portal"),
          SizedBox(
            height: 20,
          ),
            Row(
              children: [
                Text("Email address"),
                Text("*",style: TextStyle(
                  color: Colors.red
                        
                ),),
                
                        
              ],
              
              
            ),
            SizedBox(
              height: 5,
            ),
             TextField(
              
                   decoration: InputDecoration(
                    labelText:"Enter your email address" ,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14)
                        
                     )
                   )),
                   SizedBox(
                    height: 10,
                   ),
                Row(
              children: [
                Text("password"),
                Text("*",style: TextStyle(
                  color: Colors.red
                        
                ),),
                
                        
              ],
            ),
            SizedBox(
              height: 5,
            ),
             TextField(
                   decoration: InputDecoration(
                    labelText: "Enter your password",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14)
                        
                     )
                   )),
                   SizedBox(
                    height: 30,
                   ),
                   Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: isclick, onChanged:(bool? value){
                            setState(() {
                              isclick = value!;
                            });
                            
                          }
                          
                          ),
                          Text("Remember me"),
                        ],
                      ),
                       SizedBox(
                        width: 70,
                       ),
                      
                      Text("Forgot password?",style:TextStyle(color:  Colors.deepOrange
                      ),)
                        
                    ],
                   ),
                   SizedBox(
                    height: 30,
                   ),
                        
                SizedBox(
                        height: 45,
                        width: double.infinity,
                         child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.deepOrange
                          ),
                          onPressed: (){}, 
                          child: Text("Sign In",
                          style: TextStyle(
                            color: Colors.white),)),
                       ),
                       SizedBox(
                        height: 20,
                       ),
                      
                  Row(
                    children: [
                      Text("Don't have an account yet?"),
                      SizedBox(
                        width: 50,
                      ),
                      Text("Create Account",style: TextStyle(color: Colors.deepOrange),)
                  
                    ],
                  ),
                   SizedBox(
                  height: 20,
                ),
                Text("© 2026 Code IT. All rights reserved. ")
                  
              
            

          
          
          ],
        ),
      ),
);
        
      
    
  }
}