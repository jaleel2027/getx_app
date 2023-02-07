import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ThirdScreen.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("This is Second Screen"),
            ElevatedButton(onPressed: ()=>Get.back(),
                child: Text("Go to First Sreen")),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: ()=>Get.to(()=>ThirdScreen()),
                child: Text("Go to Third Screen"))
          ],
        ),
      ),
    );
  }
}
