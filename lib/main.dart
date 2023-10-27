import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fragments/AndroidFragment.dart';
import 'fragments/HomeFragment.dart';
import 'fragments/SettingFragment.dart';

main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.cyan,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 18,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabLayout"),
            elevation: 20,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.adb),
                  text: "android",
                ),
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
                Tab(icon: Icon(Icons.delivery_dining), text: "Add"),
                Tab(icon: Icon(Icons.eight_mp_rounded), text: "Map"),
                Tab(icon: Icon(Icons.family_restroom_outlined), text: "Family"),
                Tab(icon: Icon(Icons.adb), text: "Add"),
                Tab(icon: Icon(Icons.apartment_outlined), text: "Add"),
                
              ],
            ),
          ),
          body: TabBarView(
            children: [AndroidFragment(),HomeFragment(), SettingFragment(), AndroidFragment(),AndroidFragment(),HomeFragment(), SettingFragment(), AndroidFragment()],
          ),
        ));
  }
}
