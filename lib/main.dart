import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mandarat/models/mandarat_model.dart';
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
  late DatabaseReference ref;
  List<MandaratModel> items = [];

  int selectIndex = 0;
  void onClicked(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    DatabaseReference ref = FirebaseDatabase.instance.ref('mandarat');
    ref.onValue.listen((event) {
      setState(() {
        for (var mandarat in event.snapshot.children) {
          items.add(MandaratModel.fromJson(
              Map<String, dynamic>.from(mandarat.value as Map)));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('만다라트 그리드'),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: selectIndex,
        onClicked: onClicked,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(5),
            itemCount: items.length,
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
                  child: Text(items[index].keyword,
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
