import 'package:aurea/pages/detailRecipitPage/widgetDetailPage/ContainerBackgroundDetailPage.dart';
import 'package:aurea/pages/detailRecipitPage/widgetDetailPage/imageProductDetailPage.dart';
import 'package:aurea/pages/detailRecipitPage/widgetDetailPage/ingredientesAndPreparoDetailPage.dart';
import 'package:aurea/pages/detailRecipitPage/widgetDetailPage/pageViewDetailPage.dart';
import 'package:aurea/pages/detailRecipitPage/widgetDetailPage/textDetailPage.dart';
import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class DetailRecipitPage extends StatefulWidget {

  final int index;

  const DetailRecipitPage({Key key, this.index}) : super(key: key);

  @override
  _DetailRecipitPageState createState() => _DetailRecipitPageState();
}

class _DetailRecipitPageState extends State<DetailRecipitPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 82, 82, 1),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment(0, -0.8),
            child: Text('Receita', style: TextStyle(color: Colors.white70, fontSize: SizeConfig.blockSizeVertical * 3),),),
        ContainerBackgroundDetailPage(),
        ImageProductDetailPage(index: widget.index),
        DetailPageText(index: widget.index),
        PageViewDetailPage(index: widget.index), 
        IngredientesAndPreparoDetailPage(),       
    ]));
  }
}