import 'package:flutter/material.dart';
import 'package:rfw/formats.dart';
import 'package:rfw/rfw.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testrfw/data.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final Runtime _runtime = Runtime();
  final DynamicContent _data = DynamicContent();
  static const LibraryName coreName = LibraryName(<String>['core', 'widgets']);
  static const LibraryName mainName = LibraryName(<String>['main']);

  void getData() async {
    final snapshot = await FirebaseFirestore.instance.collection('item').get();
    var data = snapshot.docs.elementAt(0);
    _data.update('greet', <String, Object>{'name': 'World'});
    Data str = Data.fromMap(data.data());
    _runtime.update(coreName, createCoreWidgets());
    _runtime.update(mainName, parseLibraryFile(str.code));
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return RemoteWidget(
      runtime: _runtime,
      data: _data,
      widget: const FullyQualifiedWidgetName(mainName, 'root'),
      onEvent: (String name, DynamicMap arguments) {
        debugPrint('user triggered event "$name" with data: $arguments');
      },
    );
  }
}
