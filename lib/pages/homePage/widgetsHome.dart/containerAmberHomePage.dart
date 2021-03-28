import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listRepresentante.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerAmberHomePage extends StatefulWidget {
  @override
  _ContainerAmberHomePageState createState() => _ContainerAmberHomePageState();
}

class _ContainerAmberHomePageState extends State<ContainerAmberHomePage> {

  bool select = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, 0.8),
      child: GestureDetector(
        onTap: (){
          setState(() {
           if(select == false){
            return select = true;
          }else if(select == true){
            return select = false;
          } });
        },
        child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        height: select ? SizeConfig.blockSizeVertical * 45 : SizeConfig.blockSizeVertical * 6.5,
        width: select ? SizeConfig.blockSizeHorizontal * 70 : SizeConfig.blockSizeHorizontal * 82,
        duration: Duration(seconds: 1),
          child: Container(
          decoration: BoxDecoration(
          color: Color.fromRGBO(254, 125, 52, 1),
          borderRadius: select ? BorderRadius.circular(20) : BorderRadius.circular(80)
      ),
        child: select ? 
        Column(children: [
          Flexible(child:  
    Container(
      alignment: Alignment.center,
      height: SizeConfig.blockSizeVertical * 10,
      child: GestureDetector(
        onTap: (){
          setState(() {
            select = false;
          });
        },
        child: Text('Fechar', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 3,))))),   
    Expanded(
      flex: 5,
      child: ListView.builder(
      itemCount: listRepresentantes.length,
      itemBuilder: (context, index) {
     return ListTile(
       trailing: Text(listRepresentantes[index].estado, style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 2),),
       title: Text(listRepresentantes[index].name, style: TextStyle(color: Colors.white),),
       subtitle: Text(listRepresentantes[index].tel, style: TextStyle(color: Colors.white),),
       leading: IconButton(
         onPressed: (){
           launch('tel: //${listRepresentantes[index].tel}');
         },
         icon: Icon(Icons.call),),
     );}
    ))])
         : StackContainer()
    ))
      
      ));
  }
}

class StackContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Stack(children: [
        Align(
          alignment: Alignment(0.4,0),
          child: Text('fale com um representante', 
          style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 2.4, fontWeight: FontWeight.w400),)),
          Align(
          alignment: Alignment(-0.9,0),
          child: Image.asset('image/whatsapp.png', height: SizeConfig.blockSizeVertical * 4,))
      ]);    
  }
}