import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget{
  const TabBarDemo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.access_time, color: Colors.black),
            title: const Text("Trending"),
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Icon(Icons.ten_k_sharp, color: Colors.black),
              Icon(Icons.ten_k_sharp, color: Colors.black)
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.purpleAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purpleAccent),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.purpleAccent, width: 1)
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.access_time),
                      widthFactor: 3
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.purpleAccent, width: 1)
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.ten_k),
                      widthFactor: 3,
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.purpleAccent, width: 1)
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.access_alarms),
                      widthFactor: 3,
                    ),
                  ),
                ),
              ],
              )
            ),
          body: const TabBarView(
            children: [
              Icon(Icons.ac_unit_sharp),
              Icon(Icons.ten_k),
              Icon(Icons.directions_bike)
            ],
          ),
        ),
      )
    );
  }
}