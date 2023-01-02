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
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('플러터 공부하기',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('컨플루언스&지라 도입',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.amberAccent,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('Github Projects 공부',
                          maxLines: 1,
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
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('아이디어 구상',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('공부 로드맵',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('서비스명 정하기',
                          maxLines: 1,
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
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('파이어베이스 연동',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('애드몹 연동',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text('VS CODE 알아보기',
                          maxLines: 1,
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
