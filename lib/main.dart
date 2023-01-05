import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/mandarat_repository.dart';

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
    List mandaratList = getDummyList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('만다라트 그리드'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) =>
            Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                itemCount: mandaratList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(mandaratList[index].text,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14 * (constraints.maxWidth / 3 / 128),
                              color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
      ),
    );
  }
}

