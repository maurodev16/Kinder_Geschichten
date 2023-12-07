import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LayoutPages extends StatelessWidget {
  final String textTitle;
  final String textTile;
  final String? textTile2;
  final String? textTile3;
  final String? textTile4;
  final String? textTile5;
  final String? textTile6;
  final String? textTile7;
  final String? textTile8;
  final String? textTile9;
  final String? textTile10;
  final String assetsImageUrl;
  final VoidCallback? nextOnPressed;
  final VoidCallback? backOnPressed;
  final String? nextButtonTitle;
  final String? backButtonTitle;
  final Widget? widgetBannerGoogleAD;
  LayoutPages({
    super.key,
    required this.textTitle,
    required this.textTile,
    this.textTile2,
    this.textTile3,
    this.textTile4,
    this.textTile5,
    this.textTile6,
    this.textTile7,
    this.textTile8,
    this.textTile9,
    this.textTile10,
    required this.assetsImageUrl,
    this.nextOnPressed,
    this.backOnPressed,
    this.nextButtonTitle,
    this.backButtonTitle,
    this.widgetBannerGoogleAD,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assetsImageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: Get.height * 0.6,
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      textTitle,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      textTile,
                      style: GoogleFonts.comicNeue(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: backOnPressed!,
                          child: Text(
                            backButtonTitle!, //'Back Page',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: nextOnPressed!,
                          child: Text(
                            nextButtonTitle!, //'Next Page',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                    widgetBannerGoogleAD!,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
