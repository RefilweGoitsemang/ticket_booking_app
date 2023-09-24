import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../widgets/customized_buttons.dart';
import '../widgets/customized_textfield.dart';
import 'forgot_password.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController=TextEditingController();

  TextEditingController usernameController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  TextEditingController confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(icon: Icon(Icons.arrow_back_ios_sharp),
                  onPressed: (){
                    Navigator.pop(context);
                  },),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text("Hello! Register to get\nstarted",style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,
                ),),
              ),
              CustomizedTextfield(myController: usernameController, hintText: "Username",isPassword: false),
              CustomizedTextfield(myController: passwordController, hintText: "Enter your Password",isPassword: true),
              CustomizedTextfield(myController: passwordController, hintText: "Enter your Password",isPassword: true),
              CustomizedTextfield(myController: passwordController, hintText: "Enter your Password",isPassword: true),
        
               Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const ForgotPassword()));
                    },
                    child: const Text("Forgot Password?",
                    style:TextStyle(
                      color: Color(0xff6A707C),
                      fontSize: 15,
                    ) ,
                    ),
                  ),
                ),
              ),
              CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));
              },
        
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width:MediaQuery.of(context).size.height*0.19,
                    color: Colors.grey,
                  ),
                  const Text("Or Login with"),
                  Container(
                    height: 1,
                    width:MediaQuery.of(context).size.height*0.19,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon:const Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.blue,),
                       onPressed: () {  },
                       ),
                  ),
                  
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon:const Icon(
                        FontAwesomeIcons.google
                        ),
                       onPressed: () {  },
                       ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon:const Icon(
                        FontAwesomeIcons.apple
                        ),
                       onPressed: () {  },
                       ),
                  ),
                ],
        
              ),
            ),
            const SizedBox(
              height: 40,
        
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 8, 8, 8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:const [
                  Text("Don't Have an account?",
                  style: TextStyle(
                    color: Color(0xff1E232C),
                    fontSize: 15,
                  )),
                  Text("  Register Now",
                  style: TextStyle(
                    color: Color(0xff35C2C1),
                    fontSize: 15,
                  )),
              
                  
              
                  
                ],
              ),
            ),
            ],
        
          ),
          
        ),
      ),
    );
        
      
  }
}