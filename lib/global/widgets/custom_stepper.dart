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
    return Obx(() => Container(
      margin: const EdgeInsets.only(top: 2),
      padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,//width(context) * 0.4,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mainProfileCtrl.setStep(1);
                  },
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep == 1
                          ? AppColors.datingCardsPink
                          : AppColors.datingStepperInactive,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mainProfileCtrl.setStep(2);
                  },
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep == 2
                          ? AppColors.datingCardsPink
                          : AppColors.datingStepperInactive,
                      //borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mainProfileCtrl.setStep(3);
                  },
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep == 3
                          ? AppColors.datingCardsPink
                          : AppColors.datingStepperInactive,
                      //borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mainProfileCtrl.setStep(4);
                  },
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: mainProfileCtrl.currentStep == 4
                          ? AppColors.datingCardsPink
                          : AppColors.datingStepperInactive,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                //mainProfileCtrl.showTopSnackBar("", "5");
                mainProfileCtrl.setStep(5);
              },
              child: Container(
                //color: inspCtrl.currentStep > 4 ? Colors.black : Colors.grey[300],
                height: 4,
                decoration: BoxDecoration(
                  color: mainProfileCtrl.currentStep > 4 ? AppColors.datingCardsPink : AppColors.datingStepperInactive,
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),
          ),
            ],
          ),
        ));
  }
}
