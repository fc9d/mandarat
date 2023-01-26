import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/screens/mandarat_screen.dart';
import 'package:mandarat/screens/map_screen.dart';
import 'package:mandarat/widgets/bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> titles = ['만다라트 그리드', '지도'];
  List<Widget> views = [MandaratView(), MapScreen()];

  int selectIndex = 0;

  late BannerAd myBanner;

  void onClicked(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(
        testDeviceIds: [
          '6F509068462AD4F9ADFE464ACF4EFFD9',
        ],
      ),
    );
    myBanner = BannerAd(
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) => print('Ad loaded.'),
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          // Dispose the ad here to free resources.
          ad.dispose();
          print('Ad failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => print('Ad closed.'),
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) => print('Ad impression.'),
      ),
    );

    myBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[selectIndex]),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: selectIndex,
        onClicked: onClicked,
      ),
      // body: views[selectIndex],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          views[selectIndex],
          SizedBox(
            height: 100,
            child: AdWidget(ad: myBanner),
          ),
        ],
      ),
    );
  }
}
