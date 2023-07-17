import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var scrollController = ScrollController();
  var scrollRatio = 0.0.obs;
  var height = 0.0;
  var width = 0.0;

  @override
  void onInit() {
    super.onInit();

    scrollController.addListener(() {
      // scrollOffset.value = scrollController.offset;
      scrollRatio.value = scrollController.offset / height;
      debugPrint('scrollRatio.value = ${scrollRatio.value}');
    });
  }

  void setSize(Size size) {
    height = size.height;
    width = size.width;
  }

  getHeight(double ratio) {
    return height * ratio;
  }

  double calc(double start, double end, {Curve curve = Curves.linear}) {
    if (scrollRatio < start) {
      return 0;
    } else if (scrollRatio > end) {
      return 1;
    }
    var normalized = (scrollRatio.value - start) / (end - start);
    // var gap = (end - start) / (end - start) * (scrollRatio.value - end) + end;
    return curve.transform(normalized);
    // var gap = (1 / (start - end)) * scrollRatio.value - (start / (end - start));
    //  ex) 1, 2
    // ratio 1 = 0
    // ratio 1.1
    // ratio 2 = 1
  }
}
