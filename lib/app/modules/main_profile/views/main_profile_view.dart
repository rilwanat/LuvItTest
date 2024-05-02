import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luvit/global/app_color.dart';
import 'package:luvit/global/screen_size.dart';
import 'package:luvit/global/widgets/custom_stepper.dart';

import '../controllers/main_profile_controller.dart';

class MainProfileView extends GetView<MainProfileController> {
  const MainProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Map<String, String> items = {
      "진지한 연애를 찾는 중": "💖",
      "전혀 안 함": "🍸",
      "비흡연": "🚬",
      "매일 1시간 이상": "💪",
      "만나는 걸 좋아함": "🤝",
      "INFP": "", // You didn't specify an emoji for this item
    };


    return Scaffold(
      backgroundColor: AppColors.datingCardsBackground,
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
              // padding: const EdgeInsets.fromLTRB(5, 0, 5, 8),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 28,
                    width: 217,
                    // color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(
                        width: 28, height: 28,
                        child: Image.asset("assets/images/icons/btcon_28.png"),
                      ),
                      SizedBox(
                          height: 20,
                          width: 189,
                          child: Container(
                            // color: Colors.purple,
                            child: const Text("목이길어슬픈기린님의 새로운 스팟",
                              style: TextStyle(
                                  // fontFamily: 'Pretendered',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.datingChineseColor
                              ),

                            ),
                          ),),
                    ],),
                  ),
                  Row(children: [
                    Container(
                      width: 90,
                      height: 30,
                      // padding: const EdgeInsets.fromLTRB(5, 10, 5, 6),
                      decoration: BoxDecoration(
                          color: AppColors.datingCardsBlack,
                          border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            width: 20, height: 20,
                            child: Image.asset("assets/images/icons/Star 1.png"),
                          ),
                          const Text(
                            '323,233',
                            style: TextStyle(
                              color: AppColors.datingCardsWhite,
                              fontFamily: 'Pretendard',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                              letterSpacing: -0.6,
                              // textAlign: TextAlign.left, // Text align left is default, no need to specify
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40, height: 40,
                      child: Image.asset("assets/images/icons/btcon_40.png"),
                    ),
                  ],),
                ],
              ),
            ),
            Container(
              height: height(context) * .8,
              //color: AppColors.datingCardsPink,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      //height: 20,
                      // color: AppColors.priceWatchDarkTextGray,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      //padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Obx(() => Container(
                        width: 340,
                        height: height(context) * .8,//600,
                        // padding: const EdgeInsets.fromLTRB(5, 10, 5, 6),
                        // decoration: BoxDecoration(
                        //     color: AppColors.datingCardsBlack,
                        //     border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                        //     //borderRadius: BorderRadius.circular(100)
                        // ),
                        child: GestureDetector(
                          onTapDown: (TapDownDetails details) {

                            // Get the local position of the tap relative
                            // to the card's coordinates
                            Offset localPosition = details.localPosition;
                            double tapDistance = 160; // Adjust this value as needed

                            // Check if the tap occurred in the top-left or
                            // top-right corner within the defined tap distance
                            if (localPosition.dx < tapDistance && localPosition.dy < tapDistance) {


                              //2.a. on tapping left-top side of the card, need to show previous image
                              print('Top-left corner tapped!');
                              controller.previousStep();
                            } else if (localPosition.dx > 340 - tapDistance && localPosition.dy < tapDistance) {



                              //2.b. on tapping right-top side of the card, need to show next image
                              print('Top-right corner tapped!');
                              controller.nextStep();
                            }

                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 4,
                            child: Stack(
                              children: [

                                Obx(() => Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: controller.currentStep == 1 ?
                                    Image.asset(
                                      'assets/images/086e98d6b549c3407b40a418953d499f.png',

                                      fit: BoxFit.cover, // Adjusts the image to cover the entire container
                                    ) :
                                    controller.currentStep == 2 ?
                                    Image.asset(
                                      'assets/images/1a4b0445adcae15f1cf276d4de1eefa2.png',

                                      fit: BoxFit.cover,
                                    ) :
                                    Image.asset(
                                      'assets/images/79c8c50a1ffeaa63e0e8de84ce83a158.png',

                                      fit: BoxFit.cover, // Adjusts the image to cover the entire container
                                    ),
                                  ),
                                ),),


                                Container(
                                  width: 340,
                                  height:  height(context) * .8,//600,
                                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 6),
                                  decoration: BoxDecoration(
                                    // color: AppColors.sample,//datingCardsBlack,
                                    //border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Stack(
                                    children: [



                                      const CustomStepper(),


                                      controller.currentStep == 1 ?
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        alignment: Alignment.center,
                                        width: 340,
                                        height: 151,//height(context) * .8,
                                        margin: const EdgeInsets.only(top: 400),//449),
                                        // color: Colors.white,
                                        child: Container(
                                          width: 292,
                                          height: 151,
                                          padding: EdgeInsets.zero,
                                          decoration: const BoxDecoration(
                                            //color: Colors.deepOrange,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Expanded(child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 198,
                                                    height: 91,
                                                    //color: AppColors.datingPlacesColor,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          width: 72,//82,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                              color: AppColors.datingCardsBlack,
                                                              // border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                                                              borderRadius: BorderRadius.circular(100)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // color: AppColors.datingCardsWhite,
                                                                padding: const EdgeInsets.all(4),
                                                                width: 20,
                                                                height: 20,
                                                                child: Image.asset("assets/images/icons/Star 1-2.png"),
                                                              ),
                                                              const Text(
                                                                '29,930',
                                                                style: TextStyle(
                                                                  color: AppColors.datingCardsWhite,
                                                                  fontFamily: 'Pretendard',
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                  letterSpacing: -0.6,
                                                                  // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 6,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  margin: const EdgeInsets.only(top: 2),
                                                                  child: const Text(
                                                                    '잭과분홍콩나물',
                                                                    style: TextStyle(
                                                                      color: AppColors.datingCardsWhite,
                                                                      fontFamily: 'Pretendard',
                                                                      fontSize: 28,
                                                                      fontWeight: FontWeight.w700,
                                                                      height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                      letterSpacing: -0.6,
                                                                      // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                    ),
                                                                  ),
                                                                ),
                                                                const Text(
                                                                  '25',
                                                                  style: TextStyle(
                                                                    color: AppColors.datingCardsWhite,
                                                                    fontFamily: 'Pretendard',
                                                                    fontSize: 24,
                                                                    fontWeight: FontWeight.w300,
                                                                    height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                    letterSpacing: -0.6,
                                                                    // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              child: const Row(
                                                                children: [
                                                                  Text(
                                                                    '서울',
                                                                    style: TextStyle(
                                                                      color: AppColors.datingCardsWhite,
                                                                      fontFamily: 'Pretendard',
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w300,
                                                                      height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                      letterSpacing: -0.6,
                                                                      // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '.',
                                                                    style: TextStyle(
                                                                      color: AppColors.datingCardsWhite,
                                                                      fontFamily: 'Pretendard',
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w300,
                                                                      height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                      letterSpacing: -0.6,
                                                                      // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '2km 거리에 있음',
                                                                    style: TextStyle(
                                                                      color: AppColors.datingCardsWhite,
                                                                      fontFamily: 'Pretendard',
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w300,
                                                                      height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                      letterSpacing: -0.6,
                                                                      // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // width: 198,
                                                    //height: 91,
                                                    //color: AppColors.datingPlacesColor,
                                                    child: Align(
                                                      alignment: Alignment.bottomRight,
                                                      child: Container(
                                                        // height: 91,
                                                        // color: AppColors.datingPlacesColor,
                                                        child: SizedBox(
                                                            width: 48, height: 48,
                                                            child: Image.asset("assets/images/icons/btcon_48.png")),
                                                      ),
                                                    ),
                                                  )

                                                ],
                                              ),),
                                              SizedBox(
                                                width: 20, height: 20,
                                                child: Image.asset("assets/images/icons/icon_20.png"),
                                              )

                                            ],
                                          ),
                                        ),
                                      ) :
                                      controller.currentStep == 2 ?
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        alignment: Alignment.center,
                                        width: 340,
                                        height: 197,//height(context) * .8,
                                        margin: const EdgeInsets.only(top: 360),//400),//449),
                                        // color: Colors.white,
                                        child: Container(
                                          width: 292,
                                          height: 140,
                                          padding: EdgeInsets.zero,
                                          decoration: const BoxDecoration(
                                            //color: Colors.deepOrange,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 198,
                                                      height: 120,//137,
                                                      // color: AppColors.datingPlacesColor,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            width: 72,//82,
                                                            height: 30,
                                                            decoration: BoxDecoration(
                                                                color: AppColors.datingCardsBlack,
                                                                // border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                                                                borderRadius: BorderRadius.circular(100)
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Container(
                                                                  // color: AppColors.datingCardsWhite,
                                                                  padding: const EdgeInsets.all(4),
                                                                  width: 20,
                                                                  height: 20,
                                                                  child: Image.asset("assets/images/icons/Star 1-2.png"),
                                                                ),
                                                                const Text(
                                                                  '29,930',
                                                                  style: TextStyle(
                                                                    color: AppColors.datingCardsWhite,
                                                                    fontFamily: 'Pretendard',
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                    letterSpacing: -0.6,
                                                                    // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 6,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    margin: const EdgeInsets.only(top: 2),
                                                                    child: const Text(
                                                                      '잭과분홍콩나물',
                                                                      style: TextStyle(
                                                                        color: AppColors.datingCardsWhite,
                                                                        fontFamily: 'Pretendard',
                                                                        fontSize: 28,
                                                                        fontWeight: FontWeight.w700,
                                                                        height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                        letterSpacing: -0.6,
                                                                        // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    '25',
                                                                    style: TextStyle(
                                                                      color: AppColors.datingCardsWhite,
                                                                      fontFamily: 'Pretendard',
                                                                      fontSize: 24,
                                                                      fontWeight: FontWeight.w300,
                                                                      height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                      letterSpacing: -0.6,
                                                                      // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                child: const Text(
                                                                  '서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다',
                                                                  style: TextStyle(
                                                                    color: AppColors.datingCardsWhite,
                                                                    fontFamily: 'Pretendard',
                                                                    fontSize: 14, //15
                                                                    fontWeight: FontWeight.w300,
                                                                    height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                    letterSpacing: -0.6,
                                                                    // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // width: 198,
                                                      //height: 91,
                                                      // color: AppColors.datingPlacesColor,
                                                      child: Align(
                                                        alignment: Alignment.bottomRight,
                                                        child: Container(
                                                          // height: 91,
                                                          // color: AppColors.datingPlacesColor,
                                                          child: SizedBox(
                                                              width: 48, height: 48,
                                                              child: Image.asset("assets/images/icons/btcon_48.png")),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20, height: 20,
                                                child: Image.asset("assets/images/icons/icon_20.png"),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ) :
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        alignment: Alignment.center,
                                        width: 340,
                                        height: 293,//height(context) * .8,
                                        margin: const EdgeInsets.only(top: 260),////307),//449),
                                        // color: Colors.white,
                                        child: Container(
                                          width: 292,
                                          height: 293,
                                          padding: EdgeInsets.zero,
                                          decoration: const BoxDecoration(
                                            // color: Colors.deepOrange,
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [

                                                      Container(
                                                        // width: 198,
                                                        //height: 91,
                                                        //color: AppColors.datingPlacesColor,
                                                        child: Align(
                                                          alignment: Alignment.bottomRight,
                                                          child: Container(
                                                            // height: 91,
                                                            // color: AppColors.datingPlacesColor,
                                                            child: SizedBox(
                                                                width: 48, height: 48,
                                                                child: Image.asset("assets/images/icons/btcon_48.png")),
                                                          ),
                                                        ),
                                                      ),

                                                    ],
                                                  ),),
                                                SizedBox(
                                                  width: 20, height: 20,
                                                  child: Image.asset("assets/images/icons/icon_20.png"),
                                                )


                                              ],
                                            ),

                                              Container(
                                                width: 198,
                                                height: 233,
                                                color: AppColors.datingPlacesColor,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 72,//82,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: AppColors.datingCardsBlack,
                                                          // border: Border.all(width: 1, color: AppColors.datingCardsBorder),
                                                          borderRadius: BorderRadius.circular(100)
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // color: AppColors.datingCardsWhite,
                                                            padding: const EdgeInsets.all(4),
                                                            width: 20,
                                                            height: 20,
                                                            child: Image.asset("assets/images/icons/Star 1-2.png"),
                                                          ),
                                                          const Text(
                                                            '29,930',
                                                            style: TextStyle(
                                                              color: AppColors.datingCardsWhite,
                                                              fontFamily: 'Pretendard',
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                              letterSpacing: -0.6,
                                                              // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 6,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      // mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              margin: const EdgeInsets.only(top: 2),
                                                              child: const Text(
                                                                '잭과분홍콩나물',
                                                                style: TextStyle(
                                                                  color: AppColors.datingCardsWhite,
                                                                  fontFamily: 'Pretendard',
                                                                  fontSize: 28,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                  letterSpacing: -0.6,
                                                                  // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                                ),
                                                              ),
                                                            ),
                                                            const Text(
                                                              '25',
                                                              style: TextStyle(
                                                                color: AppColors.datingCardsWhite,
                                                                fontFamily: 'Pretendard',
                                                                fontSize: 24,
                                                                fontWeight: FontWeight.w300,
                                                                height: 1.19285714, // Calculated line height: 16.71px / 14px = 1.19285714
                                                                letterSpacing: -0.6,
                                                                // textAlign: TextAlign.left, // Text align left is default, no need to specify
                                                              ),
                                                            ),
                                                          ],
                                                        ),



                                                        Container(
                                                          height: 140,
                                                          //color: AppColors.datingPlacesColor,
                                                          child: GridView.builder(
                                                            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                                              // crossAxisCount: 2,
                                                              maxCrossAxisExtent: 150, //
                                                              mainAxisSpacing: 8,
                                                              crossAxisSpacing: 8,
                                                              childAspectRatio: 3,
                                                            ),
                                                            itemCount: items.length,
                                                            itemBuilder: (BuildContext context, int index) {
                                                              var entry = items.entries.elementAt(index);
                                                              return Container(
                                                                padding: EdgeInsets.symmetric(horizontal: 12),
                                                                //width: 72,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  color: AppColors.datingCardsLikes,
                                                                  borderRadius: BorderRadius.circular(100),
                                                                ),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [

                                                                    Text(
                                                                    // items[index],
                                                                      "${entry.value}  ${entry.key}",
                                                                      style: const TextStyle(
                                                                        color: AppColors.datingCardsWhite,
                                                                        fontFamily: 'Pretendard',
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.19285714,
                                                                        letterSpacing: -0.6,
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 6,
                                                                    )
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),





                                                      ],
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),




                              ],
                            ),
                          ),
                        ),
                      ))
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
