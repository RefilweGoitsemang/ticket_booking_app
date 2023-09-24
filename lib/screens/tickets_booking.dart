import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketBooking extends StatelessWidget {
  
  String name = '';
  String age = '';
  String from = '';
  String to = '';
  String numTickets = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ticket Booking'),
      // ),backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                         Text(
                          "Good Morning",style: Styles.headLinesStyle3,
                         ),
                         const Gap(5),
                         Text(
                          "Book Tickets",style: Styles.headLinesStyle1,
                          ),
                      ],
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              TextFormField(
                  onChanged: (value) => name = value,
                  decoration: InputDecoration(labelText: 'Name'),
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                  onChanged: (value) => age = value,
                  decoration: InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                  onChanged: (value) => from = value,
                  decoration: InputDecoration(labelText: 'From'),
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                  onChanged: (value) => to = value,
                  decoration: InputDecoration(labelText: 'To'),
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                  onChanged: (value) => numTickets = value,
                  decoration: InputDecoration(labelText: 'Number of Tickets'),
                  keyboardType: TextInputType.number,
                              ),
                              SizedBox(height: 16.0),
                              ElevatedButton(
                  onPressed: () {
                    // Perform ticket booking logic here
                    // You can use the entered values (name, age, from, to, numTickets) for further processing
                  },
                  child: Text('Book Tickets'),
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                  onPressed: () {
                    
                  },
                  
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                   ),
                              
                            ],
                          ),
                       ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  



