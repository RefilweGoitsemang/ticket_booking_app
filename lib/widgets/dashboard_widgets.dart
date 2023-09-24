import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class SingleDashBoard extends StatelessWidget {
    final Map<String,dynamic>singleitem;
  const SingleDashBoard({super.key, required this.singleitem});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Card(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(singleitem["title"],style: Styles.headLinesStyle1.copyWith(color: Colors.white),),
                  Text(singleitem["subtitle"]),
                ],
              ),
              color: Styles.orangeColor,
            ),
          ),
    );
  }
}

