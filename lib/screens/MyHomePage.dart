import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/counter_controller.dart';
import 'package:getx_app/screens/SecondScreen.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);

  //doing dependency injection:
  //(its the technique of injecting instances of one class into another):
  //instead of creating an instance directly,
  //we, wrap it with an instance of Get:

  final controller = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Getx Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            const Text("Counter Value is: ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                  ),),
            SizedBox(height: 40,),
            //for the changes to b done, need to wrap with
            Obx(()=> Text("${controller.count}",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.deepOrange,
            ),),),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()=> controller.increment(), 
                    child: Text("Increase")),
                ElevatedButton(onPressed: ()=> controller.decrement(),
                    child: Text("Decrease")),
                ElevatedButton(onPressed: ()=> controller.reset(),
                    child: Text("Reset"))
              ],
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: ()=> Get.showSnackbar(
                GetSnackBar(
                  title: "Getx Snackbar",
                  message: 'This is a Getx Snackbar',
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.orange.shade200,
                  barBlur: 5,
                )),
                child: Text('Getx Snackbar')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: ()=> Get.defaultDialog(
              title: "Getx Alert Dialog",
              middleText: 'This is a Getx AlertDialog',
              textCancel: 'Cancel',
              cancelTextColor: Colors.red,
              backgroundColor: Colors.white
            ),
                child: Text('Getx AlertDialog')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: ()=>Get.to(()=>SecondScreen()),
                child: Text("Go to Second Screen"))

          ],
        ),
      ),
    );
  }
}
