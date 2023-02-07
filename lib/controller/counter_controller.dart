import 'package:get/get.dart';

class CounterController extends GetxController{

  // tell getx to observe(obs):
  final count = 0.obs;

  //increment the count value:
  increment()=> count.value++;

  //decrement:
  decrement()=> count.value--;

  //reset:
  reset()=> count.value=0;

}