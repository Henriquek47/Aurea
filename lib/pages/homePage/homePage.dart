import 'package:aurea/pages/homePage/widgetsHome.dart/containerAmberHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/containerAureaHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/containerBackgroundHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/drawerHome.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/icons/iconHome.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/imageAureaHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/imagesListProductHomePage.dart';
import 'package:aurea/pages/homePage/widgetsHome.dart/searchHomePage.dart';
import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      endDrawer: DrawerHomePage(),
      body: Stack(children: [
        ContainerBackgroundHomePage(),
        ContainerAureaHomePage(),
        ImagesListProductHomePage(),
        ImageAureaHomePage(),
        ContainerAmberHomePage(),
        IconHome(),
        Align(
      alignment: Alignment(0.65, -0.4),
      child: IconButton(
      onPressed: (){
        scaffoldKey.currentState.openEndDrawer();
      },
      icon: Icon(Icons.list, color: Colors.white, size: SizeConfig.blockSizeVertical * 5,),
    )),
        IconRecipeHomePage(),

    ]));
  }
}