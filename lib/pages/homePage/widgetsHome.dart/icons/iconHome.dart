import 'package:aurea/pages/recepitPage/recepitPage.dart';
import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProductIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';

class IconHome extends StatefulWidget {

  @override
  _IconHomeState createState() => _IconHomeState();
}

class _IconHomeState extends State<IconHome> {

  bool isSelect = true;
  ScopedItens scopedItens = Modular.get<ScopedItens>();
  int selectPage = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return ScopedModelDescendant<ScopedItens>(
    builder: (context, child, model) { 
    return Stack(children: [
      Align(
      alignment: Alignment(0, -0.35),
      child: Align(
          alignment: Alignment(0, -0.4),
          child: ScopedModelDescendant<ScopedItens>(
            builder: (context, child, model) {
            return Container(
            height: SizeConfig.blockSizeVertical * 15,
            width: SizeConfig.blockSizeHorizontal * 20,
          child: PageView.builder(
            controller: controller,            
          scrollDirection: Axis.horizontal,
          itemCount: listProductIcons.length,
          onPageChanged: (index){
            selectPage = index;
          },
          itemBuilder: (context, index) {
            print(index);
            return GestureDetector(
        onTap: (){
          setState(() {
          switch (index) {
            case 0 : 
              model.doceDeLeiteCall();
              break;
            case 1 :
              model.brilhosCoberturasCall();
              break;
            case 2 :
              model.doceDeFrutaCall();
              break;
            case 3 :
              model.geleiasCall();
              break;
            case 4 :
              model.goiabadaCall();
              break;
            case 5 :
              model.leiteCondensadoCall();
              break;
            case 6 :
              model.linhaFestaCall();
              break;
            case 7 :
              model.molhosCondimentosCall();
              break;
            case 8 :
              model.recheioFornavelCall();
              break;
            case 9 :
              model.recheioCremosoCall();
              break;
            case 10 :
              model.refrescoCall();
              break;
            case 11 : 
              model.sobremesaCondensadaCall();  
              break;                      
            default:
              model.doceDeLeiteCall();
          }});
         
        },
        child: Container(
          child: Image.asset(listProductIcons[index]),
        ));
          },
        ));}))),
        Align(
      alignment: Alignment(-0.27, -0.36),
      child: IconButton(
        onPressed: (){
          if(selectPage > 0){
            selectPage = selectPage - 1;
            controller.jumpToPage(selectPage);
            print("VALUES==>>>>> $selectPage");
            setState(() {
          switch (selectPage) {
            case 0 : 
              model.doceDeLeiteCall();
              break;
            case 1 :
              model.brilhosCoberturasCall();
              break;
            case 2 :
              model.doceDeFrutaCall();
              break;
            case 3 :
              model.geleiasCall();
              break;
            case 4 :
              model.goiabadaCall();
              break;
            case 5 :
              model.leiteCondensadoCall();
              break;
            case 6 :
              model.linhaFestaCall();
              break;
            case 7 :
              model.molhosCondimentosCall();
              break;
            case 8 :
              model.recheioFornavelCall();
              break;
            case 9 :
              model.recheioCremosoCall();
              break;
            case 10 :
              model.refrescoCall();
              break;
            case 11 : 
              model.sobremesaCondensadaCall();  
              break;                      
            default:
              model.doceDeLeiteCall();
          }});
          }
        },
        icon: Icon(Icons.arrow_back_ios, color: Colors.white70, size: SizeConfig.blockSizeVertical * 2.5,))),
        Align(
      alignment: Alignment(0.28, -0.36),
      child: IconButton(
        onPressed: (){
          if(selectPage < 11){
            selectPage = selectPage + 1;
            controller.jumpToPage(selectPage);
            print("VALUES==>>>>> $selectPage");
            setState(() {
          switch (selectPage) {
            case 0 : 
              model.doceDeLeiteCall();
              break;
            case 1 :
              model.brilhosCoberturasCall();
              break;
            case 2 :
              model.doceDeFrutaCall();
              break;
            case 3 :
              model.geleiasCall();
              break;
            case 4 :
              model.goiabadaCall();
              break;
            case 5 :
              model.leiteCondensadoCall();
              break;
            case 6 :
              model.linhaFestaCall();
              break;
            case 7 :
              model.molhosCondimentosCall();
              break;
            case 8 :
              model.recheioFornavelCall();
              break;
            case 9 :
              model.recheioCremosoCall();
              break;
            case 10 :
              model.refrescoCall();
              break;
            case 11 : 
              model.sobremesaCondensadaCall();  
              break;                      
            default:
              model.doceDeLeiteCall();
          }});
          }
        },
        icon: Icon(Icons.arrow_forward_ios, color: Colors.white70, size: SizeConfig.blockSizeVertical * 2.5,))),
        ]);});
    }
}

class IconRecipeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.65, -0.4),
      child: IconButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => RecepitPage(),
        ));
      },
      icon: Icon(Icons.receipt_long_rounded, color: Colors.white, size: SizeConfig.blockSizeVertical * 5,),
    ));
  }
}

