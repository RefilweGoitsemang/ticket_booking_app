import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tickect_booking/widgets/customized_textfield.dart';

import '../widgets/customized_buttons.dart';
import 'login_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
TextEditingController emailController=TextEditingController();

  TextEditingController usernameController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  TextEditingController confirmPasswordController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
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
                child: Text("Hello! Register to get\nstarted",style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,
                ),),
              ),
              CustomizedTextfield(myController: usernameController, hintText: "Username",isPassword: false),
              CustomizedTextfield(myController: emailController, hintText: "Email",isPassword: false),
              CustomizedTextfield(myController: passwordController, hintText: "Password",isPassword: true),
              CustomizedTextfield(myController: confirmPasswordController, hintText: "Confirm Password",isPassword: true),
        
              
              CustomizedButton(
              buttonText: "Register",
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
                  const Text("Or Register with"),
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
                children: [
                  const Text("Already Have an account?",
                  style: TextStyle(
                    color: Color(0xff1E232C),
                    fontSize: 15,
                  )),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginScreen()));
                    },
                    child: const Text("  Login Now",
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