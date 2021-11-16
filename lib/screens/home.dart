import 'package:abc/screens/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(()=>Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks: ${counterController.counter.value}"),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () { Get.to(OtherScreen()); },
              child: const Text("Open Other Screen"),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterController.increment();
      },),
    );
  }
}
