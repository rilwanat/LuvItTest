import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app/modules/main_profile/controllers/main_profile_controller.dart';
import '../app_color.dart';
import '../screen_size.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  final mainProfileCtrl = Get.find<MainProfileController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
          width: width(context) * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //onboardingCtrl.showTopSnackBar("", "1");
                    mainProfileCtrl.setStep(1);
                  },
                  child: Container(
                    //color: inspCtrl.currentStep > 0 ? Colors.black : Colors.grey[300],
                    height: 4,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep > 0
                          ? AppColors.datingCardsPink
                          : Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 4,
              // ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //onboardingCtrl.showTopSnackBar("", "2");
                    mainProfileCtrl.setStep(2);
                  },
                  child: Container(
                    //color: inspCtrl.currentStep > 1 ? Colors.black : Colors.grey[300],
                    height: 4,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep > 1
                          ? AppColors.datingCardsPink
                          : Colors.grey[300],
                      //borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 4,
              // ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //onboardingCtrl.showTopSnackBar("", "3");
                    mainProfileCtrl.setStep(3);
                  },
                  child: Container(
                    //color: inspCtrl.currentStep > 2 ? Colors.black : Colors.grey[300],
                    height: 4,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep > 2
                          ? AppColors.datingCardsPink
                          : Colors.grey[300],
                      //borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 4,
              // ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //onboardingCtrl.showTopSnackBar("", "4");
                    mainProfileCtrl.setStep(4);
                  },
                  child: Container(
                    //color: inspCtrl.currentStep > 3 ? Colors.black : Colors.grey[300],
                    height: 4,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep > 3
                          ? AppColors.datingCardsPink
                          : Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              /*const SizedBox(width: Dimensions.PADDING_SIZE_SMALL,),
          Expanded(
            child: GestureDetector(
              onTap: () {
                inspCtrl.showTopSnackBar("", "5");
                inspCtrl.setStep(5);
              },
              child: Container(
                //color: inspCtrl.currentStep > 4 ? Colors.black : Colors.grey[300],
                height: 4,
                decoration: BoxDecoration(
                  color: inspCtrl.currentStep > 4 ? Colors.black : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),
          ),*/
            ],
          ),
        ));
  }
}
