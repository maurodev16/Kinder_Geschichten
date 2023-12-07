import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ControllerPages extends GetxController {
  @override
  void onInit() {
    bannerAd.load();
    super.onInit();
  }

  final BannerAd bannerAd = new BannerAd(
    adUnitId: "ca-app-pub-3940256099942544/6300978111",
    size: AdSize.banner,
    listener: BannerAdListener(),
    request: AdRequest(),
  );
}
