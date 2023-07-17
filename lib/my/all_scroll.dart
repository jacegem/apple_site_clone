import 'package:apple_site_clone/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class AllScroll extends GetView<MyController> {
  const AllScroll({
    super.key,
    required this.ratio,
  });
  final double ratio;

  @override
  Widget build(BuildContext context) {
    var height = controller.getHeight(ratio);

    return WebSmoothScroll(
      controller: controller.scrollController,
      child: SingleChildScrollView(
        controller: controller.scrollController,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: height,
            ),
            Container(
              height: 100,
              color: Colors.blueGrey,
              child: Center(
                child: Text('Sales Section : $height'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
