import 'package:flutter/material.dart';

class FlutterComingSoonPackage extends StatefulWidget {
  const FlutterComingSoonPackage({Key? key}) : super(key: key);

  @override
  State<FlutterComingSoonPackage> createState() =>
      _FlutterComingSoonPackageState();
}

class _FlutterComingSoonPackageState extends State<FlutterComingSoonPackage> {
  int value = 0;

  increment() async {
    await Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        value += 1;
      });
    });
  }

  @override
  void initState() {
    increment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.blue.shade200,
      child: Text("Count is : $value"),
    );
  }
}
