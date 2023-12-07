import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinder_geschichten/Books/DasK%C3%B6nigreichderL%C3%A4chelndenSterne/page3.dart';

import '../../GoogleAdsWidgetContainer/GoogleAdsWidgetContainer.dart';
import 'ControllerPages.dart';
import 'LayoutPage.dart';

class BookPage2 extends StatelessWidget {
  final ControllerPages controller = Get.find<ControllerPages>();

  @override
  Widget build(BuildContext context) {
    return LayoutPages(
      assetsImageUrl: 'assets/images/stars.png',
      textTitle: 'Das Königreich der Lächelnden Sterne',
      textTile:
          "Im Herzen von Sternenland lebte ein Sternchen namens Sternchen. Sie war besonders, weil ihr Lächeln das strahlendste von allen war. Jede Nacht bereitete sich Sternchen darauf vor, den Himmel zu erleuchten und magische Geschichten für die Kinder der Erde zu erzählen.",
      backButtonTitle: "Züruck",
      backOnPressed: () {
        Get.back();
      },
      nextButtonTitle: 'Nächste Seite',
      nextOnPressed: () {
        Get.to(() => BookPage3());
      },
      widgetBannerGoogleAD: GoogleAdsWidgetContainer(controller: controller),
    );
  }
}
