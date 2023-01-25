import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/screens/mandarat_screen.dart';
import 'package:mandarat/screens/map_screen.dart';
import 'package:mandarat/widgets/bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  void onClicked(int index) {
    setState(() {
      selectIndex = index;
    });
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
      body: views[selectIndex],
    );
  }
}
