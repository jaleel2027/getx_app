import 'package:flutter/material.dart';
import 'package:getx_app/screens/SecondScreen.dart';
import 'package:getx_app/screens/ThirdScreen.dart';
import 'screens/MyHomePage.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //use Get,aterialapp:
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/first', page: ()=> MyHomePage()),
      //   GetPage(name: '/second', page: ()=> SecondScreen()),
      //   GetPage(name: '/third', page: ()=> ThirdScreen()),
      // ],
    );
  }
}

