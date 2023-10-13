import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'app_text.dart';

class ResponsiveBotton extends StatelessWidget {
  bool? isResponvise;
  double? width;
  ResponsiveBotton({Key? key, this.width, this.isResponvise=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      // Flexible widgets require constraints so that they can allocate space
      child: Container(
          width: isResponvise == true ? double.maxFinite : width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor,
          ),
          child: Row(
            mainAxisAlignment: isResponvise == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isResponvise == true
                  ? Container(
                  margin: const EdgeInsets.only(left: 20),
                  child:  AppText(
                    text: "Book a Trip",
                    color: Colors.white,
                  ))
                  : Container(),
              Image.asset("img/button-one.png"),
            ],
          )),
    );
  }
}