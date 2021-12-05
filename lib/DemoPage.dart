import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget{
  const TabBarDemo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:  DefaultTabController(
        length: 3,
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: const TabBar(
            tabs: [
              Tab(icon:Icon(Icons.access_time)),
              Tab(icon:Icon(Icons.ten_k)),
              Tab(icon:Icon(Icons.access_alarms)),
            ],
          ),
          title: const Text('Tabs Demo 1'),
        ),
          body:const TabBarView(children: [
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.ten_k),
            Icon(Icons.directions_bike)
          ])
        )
      )
    );
  }
}