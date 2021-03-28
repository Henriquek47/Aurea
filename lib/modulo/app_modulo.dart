import 'package:aurea/pages/detailRecipitPage/detailRecipitPage.dart';
import 'package:aurea/pages/homePage/homePage.dart';
import 'package:aurea/pages/productPage/productPage.dart';
import 'package:aurea/pages/recepitPage/recepitPage.dart';
import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';
import '../main.dart';


class AppModule extends MainModule{
  @override
  // TODO: implement binds
  List<Bind> get binds =>[
    Bind((i) => ScopedItens()),
  ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, arg) => HomePage()),
  ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => MyApp();

  

}