import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/responsive/desktop_scaffold.dart';
import 'package:flutter_responsive_design/responsive/mobile_scaffold.dart';
import 'package:flutter_responsive_design/responsive/responsive_layout.dart';
import 'package:flutter_responsive_design/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      home: ResponsiveLayout(
          desktopScaffold: const DesktopScaffold(),
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletScaffold()),
    );
  }
}
