import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinder_geschichten/Books/DasK%C3%B6nigreichderL%C3%A4chelndenSterne/LayoutPage.dart';
import 'package:kinder_geschichten/Books/DasK%C3%B6nigreichderL%C3%A4chelndenSterne/page2.dart';

import '../../GoogleAdsWidgetContainer/GoogleAdsWidgetContainer.dart';
import 'ControllerPages.dart';

class BookPage1 extends StatelessWidget {
  final ControllerPages controller = Get.find<ControllerPages>();

  @override
  Widget build(BuildContext context) {
    return LayoutPages(
      assetsImageUrl: 'assets/images/stars.png',
      textTitle: 'Das Königreich der Lächelnden Sterne',
      textTile:
          'Es gab ein verzaubertes Reich am Himmel namens "Sternenland", wo die Sterne nicht nur leuchteten, sondern auch lächelten. Jeder Stern hatte ein freundliches Gesicht und liebte es, den Kindern Geschichten vor dem Schlafengehen zu erzählen.',
      backButtonTitle: "Züruck",
      backOnPressed: () {
        Get.back();
      },
      nextButtonTitle: 'Nächste Seite',
      nextOnPressed: () {
        Get.to(() => BookPage2());
      },
      widgetBannerGoogleAD: GoogleAdsWidgetContainer(controller: controller),
    );
  }
}
