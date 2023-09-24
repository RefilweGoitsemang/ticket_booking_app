import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickect_booking/utils/app_layouts.dart';
import 'package:tickect_booking/utils/app_styles.dart';

import '../widgets/thick_container.dart';


class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return SizedBox(
      
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        
        margin:  EdgeInsets.only(right:AppLayout.getHeight(16) ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // this container below is responsible for showing the blue part of the card
            Container(
              decoration:  BoxDecoration(
                color: Color(0xFF526799),
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)),
                )

              ),
              padding:  EdgeInsets.all(AppLayout.getHeight(16)),
              child:Column(children: [
                Row(
                  children: [
                    Text(ticket['from']['code'], style: Styles.headLinesStyle3.copyWith(color: Colors.white)),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(child: Stack(
                      children:[ SizedBox(
                      height: AppLayout.getHeight(24),
                      child: LayoutBuilder(
                    
                        builder: (BuildContext context, BoxConstraints constraints){
                          print("The width is ${constraints.constrainWidth()}");
                          return Flex(direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>  SizedBox(
                          width: AppLayout.getWidth(3),
                          height: AppLayout.getHeight(1),
                          child: const DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                        )),
                        );
                         },
                       
                      ),
                      
                      ),
                      const Center(child: Icon(Icons.directions_bus, color: Colors.white,)),
                      ]
                    )),
                    
                    const ThickContainer(),
                    Expanded(child: Container()),
                    Text(ticket['to']['code'], style: Styles.headLinesStyle3.copyWith(color: Colors.white)),
                  ],
                ),
                const Gap(3),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(100),child: Text(ticket['from']['name'], style: Styles.headLinesStyle4.copyWith(color: Colors.white),),

                  ),
                  Text(ticket['flying_time'],style: Styles.headLinesStyle4.copyWith(color: Colors.white),),
                  SizedBox(
                    width: AppLayout.getWidth(100),child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: Styles.headLinesStyle4.copyWith(color: Colors.white),),

                  ),
                ],
               ),
              ],),
            ),
          // the container below is responsible for showing the orange part of the card
           Container (
            color: Styles.orangeColor,
            child: Row(
              children: [
                //these sized boxes are responsible for the white curvy design on the orange part of card
                 SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(AppLayout.getHeight(10)),
                      bottomRight: Radius.circular(AppLayout.getHeight(10)),
                      )
                    )
                  ),

                ),
                //this is for the ---- lines in the orange area of the card

                Expanded(child: Padding(
                  padding:  EdgeInsets.all(AppLayout.getHeight(12.0)),
                  child: LayoutBuilder(
                    
                    builder: (BuildContext context, BoxConstraints constraints){
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                          width: AppLayout.getWidth(5),height: AppLayout.getHeight(1),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                  
                            )
                            ),
                        )),
                  
                      
                    );
                    },
                  ),
                )),



                  SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(10)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                      )
                    )
                  ),

                ),

            ]),
           ),
          //the container below is responsible for showing the orange bottom part of the card
          Container(
            decoration:  BoxDecoration(
                color: Styles.orangeColor,
                borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                bottomRight: Radius.circular(AppLayout.getHeight(21))
                )

              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                          style:Styles.headLinesStyle3.copyWith(color: Colors.white) ,),
                           const Gap(5),
                          Text("Date",
                          style: Styles.headLinesStyle4.copyWith(color: Colors.white),)
                        ],

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                          style:Styles.headLinesStyle3.copyWith(color: Colors.white) ,),
                           const Gap(5),
                          Text("Departure Time",
                          style: Styles.headLinesStyle4.copyWith(color: Colors.white),)
                        ],

                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(),
                          style:Styles.headLinesStyle3.copyWith(color: Colors.white) ,),
                           const Gap(5),
                          Text("Number",
                          style: Styles.headLinesStyle4.copyWith(color: Colors.white),)
                        ],

                      ),
                    ],
                  ),

              ]
              ),
          ),
          ],
        ),
      ),
      //card 2
      
    );
  }
}