import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CardItem extends StatefulWidget {
  const CardItem({
    super.key,
    required this.itemTitle,
    required this.price,
    required this.img,
    required this.textTime,
    required this.textSpot,
  });

  final String itemTitle, price, textTime, textSpot;
  final String img;
  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        // mainAxisAlignment: .center,
        // crossAxisAlignment: .start,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.surface,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),

                    height: 350.h,
                    width: 250.w,
                    child: Align(
                      alignment: .topCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          widget.img,
                          fit: BoxFit.cover,
                          height: 210.h,
                          width: 230.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 500.w,
                height: 100.h,
                child: GridTile(
                  // header: Padding(padding: EdgeInsets.only(top: 50, left: 200)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 30.0,
                      right: 150,
                    ),
                    child: Row(
                      mainAxisAlignment: .start,
                      crossAxisAlignment: .start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 30.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Padding(
                              padding: .symmetric(vertical: 3, horizontal: 3),
                              child: Row(
                                mainAxisAlignment: .end,
                                crossAxisAlignment: .end,
                                children: [
                                  Icon(Icons.star, color: AppColors.icon),
                                  Gap(5),
                                  CustomText(text: "4.5"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          child: Container(
                            height: 35.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              isSelected
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 240, left: 25),
                child: Container(
                  height: 20.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 240, 240),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomText(
                    text: " Car parking",
                    fontSize: 14,
                    color: AppColors.primary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 270, left: 25),
                child: CustomText(text: widget.itemTitle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 300),
                child: CustomText(text: widget.price),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Divider(
                  color: AppColors.background,
                  indent: 20,
                  endIndent: 140,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 310, left: 30),
                child: Row(
                  children: [
                    Icon(Icons.timer, color: AppColors.primary, size: 35),
                    CustomText(text: widget.textTime),
                    Gap(120),
                    Icon(
                      Icons.car_repair_rounded,
                      color: AppColors.primary,
                      size: 40,
                    ),
                    CustomText(text: widget.textSpot),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
