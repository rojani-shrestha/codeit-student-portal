
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _profileViewState();
}

class _profileViewState extends State<ProfileView> {
  bool isclick= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Column(
            children: [
              Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),
              Text("Create a student acccount",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              Text("join Code IT student portal")
            ],
          ),
            Container(
              height: 437,
              width: 396,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300
                          
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Full Name"),
                      Text("*",style: TextStyle(
                        color: Colors.red
                              
                      ),),
                      
                              
                    ],
                  ),
                   TextField(
                    
                         decoration: InputDecoration(
                          labelText:"Enter your full name" ,
                           border: OutlineInputBorder(
                              
                           )
                         )),
                      Row(
                    children: [
                      Text("Email Address"),
                      Text("*",style: TextStyle(
                        color: Colors.red
                              
                      ),),
                      
                              
                    ],
                  ),
                   TextField(
                         decoration: InputDecoration(
                          labelText: "Enter your email address",
                           border: OutlineInputBorder(
                              
                           )
                         )),
                          Row(
                    children: [
                      Text("password"),
                      Text("*",style: TextStyle(
                        color: Colors.red
                              
                      ),),
                      
                              
                    ],
                  ),
                   TextField(
                         decoration: InputDecoration(
                          labelText: "Enter your password",
                           border: OutlineInputBorder(
                              
                           )
                         )),
                        //  Row(
                        //   children: [
                        //     Text("WhatsApp Number"),
                        //     Text("*",style: TextStyle(
                        //       color: Colors.red
                        //     ),)
                        //   ],
                        //  ),
                        //  TextField(
                        //   decoration: InputDecoration(
                        //     labelText: Icon(IconButton

                        //     )
                        //   ),
                        //  ),
                         

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
                                
                              ],
                            ),
                             
                            
                            
                          ],
                         ),

                      SizedBox(
                        width: double.infinity,
                        
                        child: FilledButton(onPressed: (){}, child: Text("Create Account",style: TextStyle(color: Colors.white),)))
                ],
                
              ),
              
               
              
              
              
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("Already have an account?"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("create account",style: TextStyle(color: Colors.deepOrange),)
                    ],

                  )
                  
                ],
              )
              
              
            

          
          
          ],
        ),
      ),
);
        
      
    
  }
}