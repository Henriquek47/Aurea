import 'package:scoped_model/scoped_model.dart';

class ScopedItens extends Model{

  bool doceDeLeiteIcon = true;
  bool refrescoEmPoIcon = false;
  bool brilhosCoberturasIcon = false;
  bool doceDeFrutaIcon = false;
  bool geleiasIcon = false;
  bool goiabadaIcon = false;
  bool leiteCondensadoIcon = false;
  bool linhaFestaIcon = false;
  bool molhosCondimentosIcon = false;
  bool recheioCremosoIcon = false;
  bool recheioFornavelIcon = false;
  bool sobremesaCondensadaIcon = false;
  
  void refrescoCall(){
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = true;
    notifyListeners();
  }

  void doceDeLeiteCall(){
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = true;
    notifyListeners();
  }

  void brilhosCoberturasCall(){
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = true;
    notifyListeners();
  }

  void doceDeFrutaCall(){
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = true;
    notifyListeners();
  }

  void geleiasCall(){
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = true;
    notifyListeners();
  }

  void goiabadaCall(){
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = true;
    notifyListeners();
  }

  void leiteCondensadoCall(){
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = true;
    notifyListeners();
  }

  void linhaFestaCall(){
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = true;
    notifyListeners();
  }

  void molhosCondimentosCall(){
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = true;
    notifyListeners();
  }

  void recheioCremosoCall(){
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = true;
    notifyListeners();
  }

  void recheioFornavelCall(){
    sobremesaCondensadaIcon = false;
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = true;
    notifyListeners();
  }

  void sobremesaCondensadaCall(){
    refrescoEmPoIcon = false;
    doceDeLeiteIcon = false;
    brilhosCoberturasIcon = false;
    doceDeFrutaIcon = false;
    geleiasIcon = false;
    goiabadaIcon = false;
    leiteCondensadoIcon = false;
    linhaFestaIcon = false;
    molhosCondimentosIcon = false;
    recheioCremosoIcon = false;
    recheioFornavelIcon = false;
    sobremesaCondensadaIcon = true;
    notifyListeners();
  }

}