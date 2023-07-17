import 'package:apple_site_clone/my/all_scroll.dart';
import 'package:apple_site_clone/my/big_and_bigger.dart';
import 'package:apple_site_clone/my/iphone_title.dart';
import 'package:apple_site_clone/my_controller.dart';
import 'package:apple_site_clone/siteAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMain extends GetView<MyController> {
  const MyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        context,
        constraints,
      ) {
        Size size = MediaQuery.of(context).size;
        controller.setSize(size);

        return const Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              IphoneTitle(
                upStart: 0,
                upEnd: 0.45,
                opacityStart: 0.5,
                opacityEnd: 1,
              ),
              BigAndBigger(
                  // leftPhoneUpStart: 0,
                  // leftPhoneUpEnd: 0,

                  ),
              // Container(
              //   height: size.height / 2,
              //   color: Colors.orange,
              // ),
              AllScroll(ratio: 2), // 7.3
              SiteAppbar(),
            ],
          ),
        );
      },
    );
  }
}
