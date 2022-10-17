// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:navi/bottomSheet/infoCard.dart';

class bottomSheet extends StatefulWidget {

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override

    void displayPersistentBottomSheet() {
    Scaffold.of(context).showBottomSheet<void>((BuildContext context) {

      return Theme(
        data: Theme.of(context).copyWith(canvasColor: Color.fromARGB(255, 255, 255, 255)),
        child: Material(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              infoCard(),
            ],
          ),
        ),
      );     
    }
    );
  }

  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => displayPersistentBottomSheet(),child: Text("DATA"),);
  }
}
