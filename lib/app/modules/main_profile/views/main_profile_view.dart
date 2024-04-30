import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luvit/global/app_color.dart';

import '../controllers/main_profile_controller.dart';

class MainProfileView extends GetView<MainProfileController> {
  const MainProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.datingCardsBackground,
      // appBar: AppBar(
      //   title: const Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: AppColors.datingCardsBackground,
              height: 96,
              width: 390,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 28,
                    width: 217,
                    color: Colors.blue,
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(
                        width: 28, height: 28,
                        child: Icon(Icons.place_outlined,
                          color: AppColors.datingPlacesColor, size: 28,),
                      ),
                      SizedBox(
                          height: 20,
                          width: 189,
                          child: Text("목이길어슬픈기린님의 새로운 스팟",
                            style: TextStyle(
                                fontFamily: 'Pretendered',
                                fontSize: 14,
                                fontWeight: FontWeight.w700)
                          ),),
                    ],),
                  ),
                  Row(children: [
                    Container(
                      width: 90,
                      height: 30,
                      // padding: const EdgeInsets.fromLTRB(5, 10, 5, 6),
                      decoration: BoxDecoration(
                          color: AppColors.sample,//datingCardsBlack,
                          border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20, height: 20,
                            child: Icon(Icons.star,
                              color: AppColors.datingCardsPink,
                              size: 20,),
                          ),
                          Text("323,233",
                            style: TextStyle(
                                color: AppColors.datingCardsWhite,
                                fontSize: 14),)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40, height: 40,
                      child: Icon(Icons.notifications_outlined,
                        color: AppColors.datingCardsWhite,),
                    ),
                  ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
