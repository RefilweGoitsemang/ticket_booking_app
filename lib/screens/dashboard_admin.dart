import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickect_booking/widgets/dashboard_widgets.dart';

import '../utils/app_layouts.dart';
import '../utils/app_styles.dart';

class DashboardAdmin extends StatelessWidget {
  const DashboardAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:const Text('Dashboard') ,
        backgroundColor: primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[ 
               CircleAvatar(
                radius: 30,
                backgroundColor: Styles.orangeColor,
                
              ),
               Text("Refilwe Goitsemang",style: Styles.headLinesStyle3,),
               Text("admin@gmail.com",style: Styles.headLinesStyle4.copyWith(color: Colors.black)),
              Gap(24),
              GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8.0),
              itemCount: dashBoard.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                Map<String, dynamic>singleitem =dashBoard[index];
                return SingleDashBoard(singleitem: singleitem);
              },
              
                
               
            ),
            ]
          ),
        ),
      ),
    
    );
    
  }
}

List<Map<String, dynamic>> dashBoard = [
  {"title":"28",
  "subtitle":"Users"
  },
  {"title":"5",
  "subtitle":"Tickets"
  },
  {"title":"2",
  "subtitle":"Promotions"
  }
];