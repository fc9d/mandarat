import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/mandarat_model.dart';

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
  @override
  Widget build(BuildContext context) {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('mandarat');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print(data);
    });
    var mandarat = Mandarat.getDummy();
    List<Mandarat> mandaratList = mandarat.getList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('만다라트 그리드'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
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
                  child: Text(mandaratList[index].keyword,
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
