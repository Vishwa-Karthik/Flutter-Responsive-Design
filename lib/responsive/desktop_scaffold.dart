import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: myAppBar,
      body: Row(children: [
        // open drwaer
        myDrawer,
        // rest of the body
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // 4 box on top
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return const MyBox();
                    },
                  ),
                ),
              ),
              // tiles
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }))
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.red,
              ))
            ],
          ),
        ),
      ]),
    );
  }
}
