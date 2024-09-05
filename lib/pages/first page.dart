import 'package:coffee_project/goggle_fonts.dart';
import 'package:coffee_project/pages/second page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
class CoverPages extends StatelessWidget {
  CoverPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/coffeecoverpage.jpg'),fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Gap(500),
                      Text("Coffee", style: myStyle(35, Colors.white, FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Wake up and smell the coffee",style: myStyle(30, Colors.white, FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Start your good days with sip of coffee,",style: myStyle(18,Colors.white,FontWeight.bold),),
                ),
                Gap(20),
                InkWell(
                  onTap: (){
                    Get.to(HomePage());
                  },
                  child: Card(
                      elevation: 6,
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: one,
                        ),
                        child: Center(child: Text("Hurry Up",style: myStyle(23, Colors.white))),
                      )
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

