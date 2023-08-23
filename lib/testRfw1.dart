import 'package:flutter/material.dart';
import 'package:rfw/formats.dart';
import 'package:rfw/rfw.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  final Runtime _runtime = Runtime();
  final DynamicContent _data = DynamicContent();

  @override
  void initState() {
    super.initState();
    _update();
  }

  @override
  void reassemble() {
    // This function causes the Runtime to be updated any time the app is
    // hot reloaded, so that changes to _createLocalWidgets can be seen
    // during development. This function has no effect in production.
    super.reassemble();
    _update();
  }

  static WidgetLibrary _createLocalWidgets() {
    return LocalWidgetLibrary(<String, LocalWidgetBuilder>{
      'GreenBox': (BuildContext context, DataSource source) {
        return Container(
          color: const Color(0xFF002211),
          child: source.child(<Object>['child']),
        );
      },
      'Hello': (BuildContext context, DataSource source) {
        return Center(
          child: Text(
            'Hello, ${source.v<String>(<Object>["name"])}!',
            textDirection: TextDirection.ltr,
          ),
        );
      },
    });
  }

  static const LibraryName localName = LibraryName(<String>['local']);
  static const LibraryName remoteName = LibraryName(<String>['remote']);

  void _update() {
    _runtime.update(localName, _createLocalWidgets());
    // Normally we would obtain the remote widget library in binary form from a
    // server, and decode it with [decodeLibraryBlob] rather than parsing the
    // text version using [parseLibraryFile]. However, to make it easier to
    // play with this sample, this uses the slower text format.
    _runtime.update(remoteName, parseLibraryFile('''
      import local;
      widget root = GreenBox(
        child: Hello(name: "World"),
      );
    '''));
  }

  @override
  Widget build(BuildContext context) {
    return RemoteWidget(
      runtime: _runtime,
      data: _data,
      widget: const FullyQualifiedWidgetName(remoteName, 'root'),
      onEvent: (String name, DynamicMap arguments) {
        debugPrint('user triggered event "$name" with data: $arguments');
      },
    );
  }
}