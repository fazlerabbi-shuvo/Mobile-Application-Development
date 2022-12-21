class Model{
  String name;
  String pic;
  String? rating;
  String? distance;
  double? price;
  Model(this.pic , this.name,);

  static List<Model> generatedlist(){
    return [
      Model('images/ramen.png','Ramen'),
      Model('images/burger.png','Burger'),
      Model('images/salad.png','Salad'),
      Model('images/wafle.png','Wafle'),
      Model('images/miso.png','Sapporo Miso'),
      Model('images/kramen.png','Kurume Ramen'),

    ];
  }
}

class Model1{
  String name;
  String pic;
  String rating;
  String distance;
  double price;

  Model1(this.pic,this.name,this.price,this.distance,this.rating);
  static List<Model1> getList2(){
      return [
        Model1('images/ramen.png','Ramen',5.30,'543m','4.6'),
        Model1('images/burger.png','Burger',2.38,'345m','4.9'),
        Model1('images/salad.png','Salad',1.69,'159m','4.7'),
        Model1('images/wafle.png','Wafle',2.30,'243m','4.8'),
        Model1('images/miso.png','Sapporo Miso',3.99,'150m','5.0'),
        Model1('images/kramen.png','Kurume Ramen',5.99,'600m','5.0'),
      ];
    }
  }


class Model2{
  String name;
  String pic;
  String rating;
  String distance;
  double price;

  int amount = 1;
  double result=1;
  double delivery = 5.99;
  double totalorder = 0;
  double? totalprice;

  Model2(this.pic,this.name,this.price,this.distance,this.rating);
  static List<Model2> getList3(){
    return [
      Model2('images/ramen.png','Ramen',5.5,'543m','4.6'),
      Model2('images/burger.png','Burger',2.5,'345m','4.9'),
      Model2('images/salad.png','Salad',1.5,'159m','4.7'),
      Model2('images/wafle.png','Wafle',2.5,'243m','4.8'),
      Model2('images/miso.png','Sapporo Miso',3.5,'150m','5.0'),
      Model2('images/kramen.png','Kurume Ramen',5.5,'600m','5.0'),
    ];
  }
}