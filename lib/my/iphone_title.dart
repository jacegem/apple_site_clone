import 'package:apple_site_clone/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IphoneTitle extends GetView<MyController> {
  const IphoneTitle({
    super.key,
    required this.upStart,
    required this.upEnd,
    required this.opacityStart,
    required this.opacityEnd,
  });

  final double upStart;
  final double upEnd;
  final double opacityStart;
  final double opacityEnd;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var upNormal = controller.calc(upStart, upEnd, curve: Curves.linear);
      var opacityNoraml = controller.calc(opacityStart, opacityEnd, curve: Curves.easeIn);

      return Transform.translate(
        offset: Offset(0, -controller.height * 0.3 * upNormal),
        child: Center(
          child: Opacity(
            opacity: (1 - opacityNoraml),
            child: SizedBox(
              width: controller.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: controller.width * 0.2),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: GradientText(
                    'iPhone 14',
                    colors: const [
                      Color(0xff4ea0b4),
                      Color(0xff6994e3),
                      Color(0xff9283eb),
                      Color(0xffe668a5),
                      Color(0xffdd514a),
                    ],
                    style: const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'SFPro', color: Colors.black),
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
