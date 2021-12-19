import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
                leading: const Icon(Icons.local_fire_department, color: Colors.black),
                title: const Text("Trending"),
                titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: const [
                  Icon(Icons.notifications, color: Colors.black),
                  Icon(Icons.settings, color: Colors.black)
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
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.purpleAccent, width: 1)
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text("All")
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.purpleAccent, width: 1)
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Game 1")
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.purpleAccent, width: 1)
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Game 2")
                        ),
                      ),
                    ),
                  ],
                )
            ),
            body: const TabBarView(
              children: [
                Center(
                    child: Text("All")
                ),
                Center(
                    child: Text("Game 1")
                ),
                Center(
                    child: Text("Game 2")
                )
              ],
            ),
          ),
        ),
    );
  }
}