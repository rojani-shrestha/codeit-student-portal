import 'package:flutter/material.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 777.8,
          width: 360.04,
          
        
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),
              
              Text("Password recovery",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              
              Text("enter your email to recover your password "),
              SizedBox(
                    height: 30,
                  ),
                Row(
                  children: [
                    Text("Enter your  registered email address"),
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
                          child: Text("Send OTP",
                          style: TextStyle(
                            color: Colors.white),)),
                       ),
                       SizedBox(
                  height: 20,
                ),
                Text("Back to login ")
                  
                              


                  
              ],
            ),
          ),
        ),
      ),
);
        
      
    
  }
}