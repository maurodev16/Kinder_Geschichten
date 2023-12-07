import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../Books/DasKönigreichderLächelndenSterne/ControllerPages.dart';

class GoogleAdsWidgetContainer extends StatelessWidget {
  const GoogleAdsWidgetContainer({
    super.key,
    required this.controller,
  });

  final ControllerPages controller;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: controller.bannerAd.size.width.toDouble(),
      height: controller.bannerAd.size.height.toDouble(),
      alignment: Alignment.center,
      child: AdWidget(
        ad: controller.bannerAd,
      ),
    );
  }
}
