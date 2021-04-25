
import 'package:flutter/material.dart';

import 'const.dart';

class TabBarDetailsWidget extends StatelessWidget {
  final Function onChange;

  TabBarDetailsWidget({this.onChange});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        indicatorColor: circle,
        unselectedLabelColor:Colors.grey,
        labelColor: circle,
        onTap: onChange,
        tabs: [
          Tab(
            child: Text('ملغاة',style: TextStyle(fontFamily: 'Cairo')),
          ),

          Tab(
            child: Text('مكتملة',style: TextStyle(fontFamily: 'Cairo')),
          ),
          Tab(
            child: Text(
              'قيد الانتظار',style: TextStyle(fontFamily: 'Cairo')
            ),
          ),
        ],
      ),
    );
  }
}