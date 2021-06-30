import 'package:flutter/material.dart';

import 'package:wedding_invitation_flutter/widgets/welcome.dart';
import 'package:wedding_invitation_flutter/widgets/introduction.dart';
import 'package:wedding_invitation_flutter/widgets/gallery.dart';
import 'package:wedding_invitation_flutter/widgets/map.dart';
import 'package:wedding_invitation_flutter/widgets/congratulation_gift.dart';
import 'package:wedding_invitation_flutter/widgets/credit.dart';
import 'package:wedding_invitation_flutter/widgets/custom_divider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Welcome(),
            Introduction(),
            CustomDivider(),
            Gallery(),
            CustomDivider(),
            Map(),
            CustomDivider(),
            CongratulationGift(),
            Credit()
          ],
        ),
      ),
    );
  }
}