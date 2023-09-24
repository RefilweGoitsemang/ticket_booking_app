import 'package:flutter/material.dart';
import 'package:tickect_booking/screens/login_screen.dart';
import 'package:tickect_booking/screens/register.dart';
import 'package:tickect_booking/screens/signup_screen.dart';


import '../widgets/customized_buttons.dart';
import 'bottom_bar.dart';
import 'home_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back3.png")

          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             const SizedBox(
              height: 150,
              width: 380,
              child: Image(image:AssetImage("assets/Goitse.png"),fit: BoxFit.cover)
            ),
            CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginScreen()));
              },

            ),
            CustomizedButton(
              buttonText: "Register",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const RegisterPage()));
                
              },

            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const Bottom(title: null,)));
                },
                child: Text("Continue as a Guest",
                 style: TextStyle(
                  color:Color(0xff35C2C1),
                  fontSize: 25),),
              ),
            )
          ],
        ),
      ),
    );
  }
}