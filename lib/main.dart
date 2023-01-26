import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/models/screen_model.dart';
import 'package:mandarat/widgets/banner_widget.dart';

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
  final List<ScreenModel> _screens = ScreenModel.screens();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens.firstWhere((element) => element.isSelected).title),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _screens.firstWhere((element) => element.isSelected).screen,
          ),
          const BannerWidget(),
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() => BottomNavigationBar(
        items: _screens
            .map(
              (e) => BottomNavigationBarItem(
                icon: e.icon,
                label: e.title,
              ),
            )
            .toList(),
        currentIndex: _screens.indexWhere((element) => element.isSelected),
        elevation: 15,
        onTap: (index) => setState(() {
          for (ScreenModel screenModel in _screens) {
            screenModel.isSelected = false;
          }
          _screens[index].isSelected = true;
        }),
      );
}
