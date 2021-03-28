import 'package:aurea/pages/homePage/widgetsHome.dart/containerAureaHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/imageAureaHomePage.dart';
import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DrawerHomePage extends StatefulWidget {
  @override
  _DrawerHomePageState createState() => _DrawerHomePageState();
}

class _DrawerHomePageState extends State<DrawerHomePage> {

  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Container(
      width: SizeConfig.blockSizeHorizontal * 70,
      child: Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 134, 0, 1),
        ),
        child: Stack(
          children: [
            ImageAureaHomePage(),
            Align(
              alignment: Alignment(-0.5, -0.3),
              child: Text('Aurea Alimentos', style: TextStyle(
                color: Colors.white70, fontSize: SizeConfig.blockSizeVertical * 2.5),),
            ),
            Align(
              alignment: Alignment(-0.65, -0.15),
              child: Text('Aurea Pan', style: TextStyle(
                color: Colors.white70, fontSize: SizeConfig.blockSizeVertical * 2.5)),
            ),
            Align(
              alignment: Alignment(-0.65, 0.8),
              child: Text('Sobre', style: TextStyle(
                color: Colors.white70, fontSize: SizeConfig.blockSizeVertical * 2.5)),
            ),
            Align(
              alignment: Alignment(-0.65, 0.7),
              child: Text('Nosso Site', style: TextStyle(
                color: Colors.white70, fontSize: SizeConfig.blockSizeVertical * 2.5)),
            ),
    ]))));
  }
}