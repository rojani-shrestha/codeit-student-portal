import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
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
              
              Text("Check your mail",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              
              Text("We've sent the code to your mail "),
              SizedBox(
                    height: 30,
                  ),
                  
                  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: List.generate(4, (index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        height: 85,
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.black26),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }),
),


                      
                        SizedBox(
                        height: 45,
                        width: double.infinity,
                         child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.deepOrange
                          ),
                          onPressed: (){}, 
                          child: Text("Verify",
                          style: TextStyle(
                            color: Colors.white),)),
                       ),
                SizedBox(
                  height: 20,
                ),
              // 
              SizedBox(
  width: double.infinity,
  height: 50,
  child: OutlinedButton(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.grey.shade200, // light background
      side: BorderSide(color: Colors.deepOrange, width: 2), // border
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14), // rounded corners
      ),
    ),
    onPressed: () {},
    child: Text(
      "Send again",
      style: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
)
                
                  
                              


                  
              ],
            ),
          ),
        ),
      ),
);
        
      
    
  }
}
  
