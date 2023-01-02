import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mandarat'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellowAccent,
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('플러터 공부하기',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    padding: const EdgeInsets.all(10.0),
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('컨플루언스&지라 도입',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.amberAccent,
                    width: 200,
                    padding: const EdgeInsets.all(10.0),
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('Github Projects 공부',
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
                    color: Colors.deepOrange,
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('아이디어 구상',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('공부 로드맵',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('서비스명 정하기',
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
                    color: Colors.deepOrangeAccent,
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('파이어베이스 연동',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    width: 200,
                    padding: const EdgeInsets.all(10.0),
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('애드몹 연동',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: 200,
                    padding: const EdgeInsets.all(10.0),
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: AutoSizeText('VS CODE 알아보기',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
