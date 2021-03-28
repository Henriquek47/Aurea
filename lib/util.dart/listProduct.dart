import 'package:aurea/util.dart/listRecipit.dart';
import 'package:flutter/material.dart';

class Product{
  final String name;
  final String img;
  final Color backgroundColor;
  final String ingredientes;
  final String sobre;
  final List recipit;

  Product(this.name, this.img, this.backgroundColor, this.ingredientes, this.sobre ,this.recipit,);
}

var colorDoceDeLeite = Color.fromRGBO(254, 125, 52, 1);

List<Product> listDoceDeLeite = [
    Product(
      'doceDeLeite',
     'imageDoceDeLeite/doce.png',
      colorDoceDeLeite,
      'Ingredientes\nLeite e/ou leite em pó reconstituído, açúcar, glicose, chocolate em pó e amido. Estabilizante: citrato de sódio. Redutor de acidez: bicarbonato de sódio. Conservante: sorbato de potássio. Enzima: lactase. Obs.: ALÉRGICOS: CONTÉM LEITE E DERIVADOS. PODE CONTER AMENDOIM, SOJA, AVELÃS, AMÊNDOA, CASTANHA-DE-CAJU, CASTANHA-DO-PARÁ E NOZES. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN.',
      'O Doce de Leite Áurea é um produto superior aos similares no mercado, produzido de uma maneira diferenciada, para atingir um alto padrão de sabor e agradar aos paladares mais refinados.',
      [listRecipit[0].img1, listRecipit[1].img1]),
    Product(
      'doceChocolate',
       'imageDoceDeLeite/doceChocolate.png',
       colorDoceDeLeite,
       'Ingredientes\nLeite e/ou leite em pó reconstituído, açúcar, glicose e amido. Estabilizante: citrato de sódio. Redutor de acidez: bicarbonato de sódio. Conservante: sorbato de potássio. Enzima: lactase. Obs.: ALÉRGICOS: CONTÉM LEITE. PODE CONTER AMENDOIM, SOJA E AVELÃS. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN.',
       'O Doce de Leite Áurea é um produto superior aos similares no mercado, produzido de uma maneira diferenciada, para atingir um alto padrão de sabor e agradar aos paladares mais refinados.',
         []),
    Product(
       'doceAvela',
        'imageDoceDeLeite/doceAvela.png',
        colorDoceDeLeite,
        'Ingredientes\nLeite e/ou leite em pó reconstituído, açúcar, glicose, avelã, chocolate em pó e amido. Estabilizante: citrato de sódio. Conservante: sorbato de potássio. Aromatizante. Obs.: ALÉRGICOS: CONTÉM AVELÃ, LEITE E DERIVADOS. PODE CONTER SOJA, AMENDOIM, AMÊNDOA, CASTANHA-DE-CAJU, CASTANHA-DO-PARÁ E NOZES. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural',
        'O Doce de Leite Áurea é um produto superior aos similares no mercado, produzido de uma maneira diferenciada, para atingir um alto padrão de sabor e agradar aos paladares mais refinados.',
         [])
  ];

  List listRefresco = [
    Product('limao',
     'imageRefresco/limao.png',
      Color.fromRGBO(167, 202, 53, 1),
      'Ingredientes\nAçúcar, suco de limão desidratado. Acidulante: ácido cítrico. Estabilizante: citrato de sódio. Aromatizante: aroma natural de limão. Antiumectante: fosfato tricálcico. Edulcorante artificial: aspartame (24mg/100ml), ciclamato de sódio (17mg/100ml), acessulfame K (3mg/100ml) e sacarina sódica (1mg/100ml).Corante inorgânico: dióxido de titânio. Espessante: goma xantana e carboximetilcelulose sódica. Antioxidante: ácido ascórbico (vitamina C). Corante artificial: tartrazina. Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural. Contém Fenilalanina. Colorido artificialmente.Já vem adoçado. Fonte de vitamina C. Não fermentado – Não alcoólico.',
      'Para aquele rápido preparo da bebida que faz o maior sucesso no verão. 13 sabores diferentes para trazer o melhor da refrescância e sabor da fruta.',
       []),
    Product('uva',
     'imageRefresco/uva.png'
     , Color.fromRGBO(137, 98, 183, 1),
      'Ingredientes\nAçúcar, suco de uva desidratado. Acidulante: ácido cítrico e ácido fumárico. Aromatizante: aroma idêntico ao natural de uva. Corante: caramelo. Estabilizante: citrato de sódio. Antiumectante: fosfato tricálcico. Edulcorante artificial: aspartame (21mg/100ml), ciclamato de sódio (16mg/100ml), acessulfame K (3mg/100ml) e sacarina sódica (1mg/100ml). Corante artificial: amaranto e azul brilhante. Espessante: carboximetilcelulose sódica e goma xantana. Corante inorgânico: dióxido de titânio. Antioxidante: ácido ascórbico (vitamina C). Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural. Contém Fenilalanina. Colorido artificialmente. Já vem adoçado. Fonte de vitamina C. Não fermentado – Não alcoólico.',
      'Para aquele rápido preparo da bebida que faz o maior sucesso no verão. 13 sabores diferentes para trazer o melhor da refrescância e sabor da fruta.',
      []),
    Product('morango',
     'imageRefresco/morango.png',
      Colors.red,
        'Ingredientes\nAçúcar, suco de morango desidratado. Acidulante: ácido cítrico. Estabilizante: citrato de sódio. Aromatizante: aroma idêntico ao natural de morango. Edulcorante artificial: aspartame (26mg/100ml), ciclamato de sódio (17mg/100ml), acessulfame K (3mg/100ml) e sacarina sódica (1mg/100ml). Antiumectante: fosfato tricálcico. Corante inorgânico: dióxido de titânio. Espessante: goma xantana. Corante: caramelo. Corante artificial: vermelho 40. Antioxidante: ácido ascórbico (vitamina C). Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural. Contém Fenilalanina. Colorido artificialmente. Já vem adoçado. Fonte de vitamina C. Não fermentado – Não alcoólico.',
      'Para aquele rápido preparo da bebida que faz o maior sucesso no verão. 13 sabores diferentes para trazer o melhor da refrescância e sabor da fruta.',
       []),
    Product('laranja',
     'imageRefresco/laranja.png',
      Colors.orange,
        'Ingredientes\nAçúcar, suco de laranja desidratado. Acidulante: ácido cítrico. Aromatizante: aroma idêntico ao natural de laranja. Estabilizante: citrato de sódio. Antiumectante: fosfato tricálcico. Corante Inorgânico: dióxido de titânio. Edulcorante artificial: aspartame (22mg/100ml), ciclamato de sódio (16mg/100ml), acessulfame K (3mg/100ml) e sacarina sódica (1mg/100ml). Espessante: goma xantana. Antioxidante: ácido ascórbico (vitamina C). Corante artificial: tartrazina e amarelo crepúsculo. Obs.: NÃO CONTÉM GLUTÉN. Contém aromatizante sintético idêntico ao natural. Contém Fenilalanina. Colorido artificialmente. Já vem adoçado. Fonte de Vitamina C. Não fermentado - Não alcoólico.',
      'Para aquele rápido preparo da bebida que faz o maior sucesso no verão. 13 sabores diferentes para trazer o melhor da refrescância e sabor da fruta.',
       []),
  ];

  List listBrilhosCoberturas = [
    Product('BrilhoCoberturaMaracuja',
     'imageBrilhosCoberturas/brilhoCoberturaMaracuja.png',
      Colors.red,
        'Ingredientes\nÁgua, açúcar, glicose e amido. Acidulante: ácido lático. Conservante: benzoato de sódio. Aromatizante: aroma idêntico ao natural de maracujá. Corante: amarelo tartrazina e amarelo crepúsculo. Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural. Colorido artificialmente. Contém corante amarelo tartrazina.',
      'Produto à base de amido e de açúcar. Possui textura úmida e aparência brilhosa. Já vem pronto para uso, além de possuir maior durabilidade em relação aos produtos caseiros, proporcionando mais beleza à confeitaria.',
       []),
  ];
  
  List listDoceDeFruta = [
    Product('limao',
     'imageDoceDeFruta/limao.png',
      Color.fromRGBO(167, 202, 53, 1),
        '',
      '',
       []),
  ];

  List listGeleias = [
    Product('limao',
     'image/limao.png',
      Color.fromRGBO(167, 202, 53, 1),
        '',
      '',
       []),
  ];

  List listGoiabada = [
    Product('Goiabada',
     'imageGoiabada/goiabada.png',
      Color.fromRGBO(222, 97, 135, 1),
      'Ingredientes\nPolpa de goiaba, açúcar e glicose. Espessante: pectina. Acidulante: ácido lático. Conservante: benzoato de sódio. Obs.: NÃO CONTÉM GLÚTEN.',
      'O verdadeiro sabor da fruta está na linha de Goiabada da Áurea. Seja nas receitas mais tradicionais, nossos produtos garantem sempre qualidade e muito sabor para qualquer ocasião.',
       []),
  ];

  List listLeiteCondensado = [
    Product('LeiteCondesado',
     'imageLeiteCondensado/LeiteCondesado.png',
      Color.fromRGBO(232, 179, 72, 1),
        'Ingredientes\nLeite e/ou leite em pó reconstituído, açúcar e lactose. Obs.: ALÉRGICOS: CONTÉM LEITE E DERIVADOS. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN.',
      'Quando tem amor na mesa, tem Áurea. Nosso leite condensado já conquistou fãs por seu sabor delicioso e consistência. Pode ser puro ou em uma deliciosa receita, você escolhe. Só não pode faltar Áurea na mesa.',
       []),
  ];

  List listLinhaFesta = [
    Product('Cajuzinho', 
    'imageLinhaFesta/cajuzinho.png',
     Color.fromRGBO(168, 82, 54, 1),
      'Ingredientes\nLeite e/ou leite em pó reconstituído, soro de leite e/ou soro de leite em pó reconstituído e/ou soro de leite concentrado, açúcar, pasta de amendoim, glicose, gordura vegetal, amido e cacau em pó. Espessante: pectina. Estabilizante: citrato de sódio e bicarbonato de sódio. Conservante: sorbato de potássio. OBS.: ALÉRGICOS: CONTÉM LEITE, AMENDOIM, DERIVADOS DE LEITE E SOJA. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN. CONTÉM GORDURA VEGETAL.',
      'A linha Festa Áurea proporciona a você momentos de alegria e muito sabor. Ela traz praticidade, pois já vem pronta, só precisando enrolar e servir. Faça a sua festa ser um sucesso de sabor.',
      []),
  ];

  List listMolhosCondimentos = [
    Product('Ketchup',
     'imageMolhosCondimentos/ketchup.png',
      Color.fromRGBO(162, 23, 23, 1),
        'Ingredientes\nPolpa de tomate, água, açúcar, vinagre, sal, amido e especiaria. Acidulantes: ácido acético e ácido lático. Conservante: sorbato de potássio. Aromatizante. Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural.',
      'O acompanhamento essencial que dá ainda mais sabor para todos os pratos salgados.',
       []),
  ];

  List listRecheioCremoso = [
    Product('RecheioDeMoranho',
     'imageRecheioCremoso/recheioDeMorango.png',
      Colors.red,
        'Ingredientes\nAçúcar, polpa de maçã, água, suco de morango e amido. Conservante: benzoato de sódio. Acidulante: ácido lático. Aromatizante. Corante: amaranto. Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural.',
      'Com 9 opções de sabores de recheios temos os principais ingredientes para o melhor do paladar em todas as aplicações.',
       []),
    Product('RecheioDeBanana',
     'imageRecheioCremoso/RecheioCremosoBanana.png',
      Colors.red,
        'Ingredientes\nAçúcar, polpa de banana, água e amido. Corante: caramelo. Conservante: benzoato de sódio. Acidulante: ácido lático. Obs.: NÃO CONTÉM GLÚTEN',
      'Com 9 opções de sabores de recheios temos os principais ingredientes para o melhor do paladar em todas as aplicações.',
       [])
  ];

  List listRecheioFornavel = [
    Product('RecheioSaborGoiaba',
     'imageRecheioFornavel/recheioSaborGoiaba.png',
      Colors.red,
        'Ingredientes\nAçúcar, polpa de goiaba, polpa de maçã, glicose e amido modificado. Espessante: pectina. Acidulante: ácido lático. Conservante: benzoato de sódio. Aromatizante. Corante: amaranto. Obs.: NÃO CONTÉM GLÚTEN. Contém aromatizante sintético idêntico ao natural.',
      'Indicado para a preparação de diversas receitas sendo resistente a altas temperaturas, forneamento e congelamento.',
       []),
  ];

  List listSobremesaCondensada = [
    Product('SobremesaCondensada',
     'imageSobremesaCondensada/sobremesaCondensada.png',
      Color.fromRGBO(233, 134, 41, 1),
        'Ingredientes\nSoro de leite e/ou soro de leite em pó reconstituído e/ou soro de leite concentrado, leite e/ou leite em pó reconstituído, açúcar, amido e lactose. Estabilizante: fosfato de sódio. Conservante: sorbato de potássio. Aromatizante: aroma artificial de leite condensado. Obs.: ALÉRGICOS: CONTÉM LEITE E DERIVADOS. CONTÉM LACTOSE. NÃO CONTÉM GLÚTEN. Aromatizado Artificialmente.',
      'Sabor delicioso e inconfundível. Consistência que encanta a todos os tipos de paladares, seja para ser consumido puro ou nas mais diversas receitas que pedem esse ingrediente de qualidade.',
       []),
  ];
