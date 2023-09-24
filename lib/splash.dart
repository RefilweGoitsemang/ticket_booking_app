import 'package:flutter/material.dart';
import 'package:tickect_booking/main.dart';
import 'package:tickect_booking/screens/welcome_screen.dart';




class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {         // this is called when the class is initialized or called for the first time
   super.initState();  //  this is the material super constructor for init state to link your instance initState to the global initState context
   _navigatetohome();
}

_navigatetohome() async{
  await Future.delayed(Duration(milliseconds: 3000),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>WelcomeScreen()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image(
          image: AssetImage('assets/bus.png'),
        ),

      ),
    );
  }

// body: Center(
      //   child: Container(
      //     child: Text('splash screen',
      //      style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),
      //      ),
      //   ),
      // );
}