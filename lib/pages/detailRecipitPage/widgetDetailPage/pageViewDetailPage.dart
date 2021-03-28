import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listRecipit.dart';
import 'package:flutter/material.dart';

class PageViewDetailPage extends StatefulWidget {

  final int index;

  const PageViewDetailPage({Key key, this.index}) : super(key: key);

  @override
  _PageViewDetailPageState createState() => _PageViewDetailPageState();
}

class _PageViewDetailPageState extends State<PageViewDetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return PageView.builder(
         controller: PageController(
              viewportFraction: 0.7
            ),
        itemCount: listRecipit[widget.index].ingredienteProduct.length,
        itemBuilder: (context, index) {
          return
           Align(
            alignment: Alignment(0, 0.9),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 156, 88, 1),
                borderRadius: BorderRadius.circular(40)
              ),
              height: SizeConfig.blockSizeVertical * 30,
              width: SizeConfig.blockSizeHorizontal * 50,
              child: Image.asset(listRecipit[widget.index].ingredienteProduct[index]
              ),
            )
          );
        },
      );
  }
}