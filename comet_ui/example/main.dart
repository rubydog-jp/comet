import 'package:flutter/material.dart';
import 'package:comet/comet.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CometViewer(
        cometData: cometData,
        inlineWidgets: inlineWidgets,
        pathParams: const {},
      ),
    );
  }
}

// Docs
// https://comet.rubydog.jp/
dynamic inlineWidgets;
dynamic cometData;
