import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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
  late double fixedSize;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >
        MediaQuery.of(context).size.height) {
      fixedSize = MediaQuery.of(context).size.height / 3 - 10;
    } else {
      fixedSize = MediaQuery.of(context).size.width / 3 - 10;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: fixedSize,
                  height: fixedSize,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: AutoSizeText('플러터 공부하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
