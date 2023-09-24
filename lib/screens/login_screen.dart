import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tickect_booking/screens/forgot_password.dart';
import 'package:tickect_booking/widgets/customized_textfield.dart';

import '../widgets/customized_buttons.dart';
import 'bottom_bar.dart';
import 'register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: LayoutBuilder(
            builder: (context,constraints){
              var parentHeight = constraints.maxHeight;
            var parentWidth = constraints.maxWidth;
            debugPrint('Max height: $parentHeight, max width: $parentWidth');
            return SingleChildScrollView(
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
                child: Text("Welcome back! Glad\nto see you, Again!",style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,
                ),),
              ),
              CustomizedTextfield(myController: emailController, hintText: "Enter your Email",isPassword: false),
              CustomizedTextfield(myController: passwordController, hintText: "Enter your Password",isPassword: true),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  InkWell(
                    onTap: () {
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Bottom(title: null,)));
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
              height: 50,

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 8, 8, 8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Don't Have an account?",
                  style: TextStyle(
                    color: Color(0xff1E232C),
                    fontSize: 15,
                  )),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const RegisterPage()));
                    },
                    child: Text("  Register Now",
                    style: TextStyle(
                      color: Color(0xff35C2C1),
                      fontSize: 15,
                    )),
                  ),
              
                  
              
                  
                ],
              ),
            ),
            ],

          ),
          
        );
            }
      ),
    ),
      ),
    );
  }
}