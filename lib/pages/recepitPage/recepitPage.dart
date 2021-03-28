import 'package:aurea/pages/recepitPage/widgetRecepit.dart/containerList.dart';
import 'package:aurea/pages/recepitPage/widgetRecepit.dart/imageAureaRecipit.dart';
import 'package:aurea/pages/recepitPage/widgetRecepit.dart/searchRecipit.dart';
import 'package:flutter/material.dart';

class RecepitPage extends StatefulWidget {
  @override
  _RecepitPageState createState() => _RecepitPageState();
}

class _RecepitPageState extends State<RecepitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red,
      body: Stack(children: [
        ContainerList(),
        SearchRecipit(),
        ImageAureaRecipit(),
    ]));
  }
}