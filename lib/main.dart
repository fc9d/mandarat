import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/mandarat_model.dart';

List mandaratModelList = [
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기 asdddd'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기'),
  MandaratModel('플러터 공부하기')
];

void main() {
  logger.d('안녕 플러터');
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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('만다라트'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getContainer(constraints, mandaratModelList[0].text),
                _getContainer(constraints, mandaratModelList[1].text),
                _getContainer(constraints, mandaratModelList[2].text),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getContainer(constraints, mandaratModelList[3].text),
                _getContainer(constraints, mandaratModelList[4].text),
                _getContainer(constraints, mandaratModelList[5].text),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getContainer(constraints, mandaratModelList[6].text),
                _getContainer(constraints, mandaratModelList[7].text),
                _getContainer(constraints, mandaratModelList[8].text),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

Container _getContainer(BoxConstraints constraints, String text) {
  var size = constraints.maxWidth > constraints.maxHeight
      ? constraints.maxHeight / 3 - 10
      : constraints.maxWidth / 3 - 10;
  return Container(
    width: size,
    height: size,
    color: Colors.lightBlue,
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.all(5),
    child: Center(
      child: Text(text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14 * (size / 128), color: Colors.white)),
    ),
  );
}
