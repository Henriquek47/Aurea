import 'package:aurea/pages/detailRecipitPage/detailRecipitPage.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:aurea/util.dart/listRecipit.dart';
import 'package:flutter/material.dart';

class ContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, 1),
      child: Container(
            height: MediaQuery.of(context).size.height - 250.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 4),
              child: ListView.builder(
              itemCount: listRecipit.length,
              itemBuilder: (context, index) {
                return Row(children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailRecipitPage(index: index),
                      ));
                    },
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 35),
                  child: Hero(
                    tag: 'imageRecipit$index',
                    child: CircleAvatar(
                      maxRadius: SizeConfig.blockSizeVertical * 5.5,
                      backgroundImage: NetworkImage(listRecipit[index].img1)
                    )
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 30),
                  child: Text(listRecipit[index].name, style: TextStyle(fontSize: 15),)),
                  Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: Text(listRecipit[index].min, style: TextStyle(fontSize: 15),)),
                  Flexible(
                    child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ))),
                ]);
              },
            ),
            )));
  }
}