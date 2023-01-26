import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mandarat/models/mandarat_model.dart';

class MandaratView extends StatefulWidget {
  const MandaratView({super.key});

  @override
  State<MandaratView> createState() => _MandaratViewState();
}

class _MandaratViewState extends State<MandaratView> {
  late DatabaseReference ref;
  List<MandaratModel> items = [];

  @override
  void initState() {
    super.initState();

    DatabaseReference ref = FirebaseDatabase.instance.ref('mandarat');
    ref.onValue.listen((event) {
      setState(() {
        items.clear();
        for (var mandarat in event.snapshot.children) {
          items.add(MandaratModel.fromJson(
              Map<String, dynamic>.from(mandarat.value as Map)));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Center(
        child: GridView.builder(
          primary: false,
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
    );
  }
}
