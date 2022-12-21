import 'package:flutter/material.dart';

//Heart Specialist
class ModelHeart{
  String image;
  String post;
  String name;
  String review;
  String ratings;
  String biography;
  String map;

  ModelHeart(this.name,this.image,this.post,this.ratings,this.review,this.biography,this.map);
  static List<ModelHeart> generatedlist (){
    return[
      ModelHeart('Dr. Anna Baker', 'images/doctor.png','Heart surgeon','4.8','120','Dr. Anna Baker is a Bangladeshi Heart Surgeon specialist.\nShe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelHeart('Dr. Nurun Nahar Fatema', 'images/heart/h2.png','Heart surgeon','4.9','143','Dr. Nurun Nahar Fatema is a Bangladeshi Heart Surgeon specialist.\nShe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelHeart('Dr. Tanjima Parvin', 'images/heart/h3.png','Heart surgeon','4.9','169','Dr. Tanjima Parvin is a Bangladeshi Heart Surgeon specialist.\nShe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelHeart('Dr. Momenuzzaman', 'images/heart/h4.png','Heart surgeon','4.7','126','Dr. Momenuzzaman is a Bangladeshi Heart Surgeon specialist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelHeart('Dr. A M Muzibul Haque', 'images/heart/h5.png','Heart surgeon','4.8','189','Dr. A M Muzibul Haque is a Bangladeshi Heart Surgeon specialist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
    ];
  }
}


//Psychologist
class ModelPsy{
  String image;
  String post;
  String name;
  String review;
  String ratings;
  String biography;
  String map;

  ModelPsy(this.name,this.image,this.post,this.ratings,this.review,this.biography,this.map);
  static List<ModelPsy> generatedlist (){
    return[
      ModelPsy('Dr. Mohammad Tariqul Alam', 'images/psy/p1.png','Psychologist','4.9','220','Dr. Mohammad Tariqul Alam is a Bangladeshi Psychologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelPsy('Dr. Helal Uddin Ahmed', 'images/psy/p2.png','Psychologist','4.8','202','Dr. Helal Uddin Ahmed is a Bangladeshi Psychologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelPsy('Dr. Mekhala Sarkar', 'images/psy/p3.png','Psychologist','4.9','159','Dr. Mekhala Sarkar is a Bangladeshi Psychologist.\nShe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelPsy('Dr. Md. Faruk Hossain', 'images/psy/p4.png','Psychologist','4.9','225','Dr. Md. Faruk Hossain is a Bangladeshi Psychologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelPsy('Dr. Md. Zahir Uddine', 'images/psy/p5.png','Psychologist','4.8','129','Dr. Md. Zahir Uddin is a Bangladeshi Psychologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
    ];
  }
}


//Neurologist
class ModelNeu{
  String image;
  String post;
  String name;
  String review;
  String ratings;
  String biography;
  String map;

  ModelNeu(this.name,this.image,this.post,this.ratings,this.review,this.biography,this.map);
  static List<ModelNeu> generatedlist (){
    return[
      ModelNeu('Professor Dr. Kazi Deen Mohammad', 'images/neu/n1.png','Neurologist','4.9','129','Professor Dr. Kazi Deen Mohammad is a Bangladeshi Neurologist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelNeu('Prof. Dr. Md. Amirul Haque', 'images/neu/n2.png','Neurologist','4.9','201','Prof. Dr. Md. Amirul Haque is a Bangladeshi Neurologist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelNeu('Professor Dr. Md. Abdul Hai', 'images/neu/n3.png','Neurologist','4.8','220','Professor Dr. Md. Abdul Hai is a Bangladeshi Neurologist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelNeu('Professor Dr. Mansur Habib', 'images/neu/n4.png','Neurologist','4.9','250','Professor Dr. Mansur Habib is a Bangladeshi Neurologist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelNeu('Prof. Dr. Md. Ashraf Ali', 'images/neu/n5.png','Neurologist','4.7','120','Prof. Dr. Md. Ashraf Aliis a Bangladeshi Neurologist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),

    ];
  }
}

//Immunologist
class ModelImm{
  String image;
  String post;
  String name;
  String review;
  String ratings;
  String biography;
  String map;

  ModelImm(this.name,this.image,this.post,this.ratings,this.review,this.biography,this.map);
  static List<ModelImm> generatedlist (){
    return[
      ModelImm('Dr. Narayan Chandra Kundu', 'images/imm/i1.png','Immunologist','4.9','320','Dr. Narayan Chandra Kundu is a Bangladeshi Immunologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelImm('Dr. A.N Nashimussin Ahmed', 'images/imm/i2.png','Immunologist','4.8','325','Dr. A.N Nashimussin Ahmed is a Bangladeshi Immunologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelImm('Dr. Md. Amirul Haque', 'images/imm/i3.png','Immunologist','4.7','125','Dr. Md. Amirul Haque is a Bangladeshi Immunologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelImm('Dr. Sirajee Shaqiqul Islam', 'images/imm/i4.png','Immunologist','4.6','209','Dr. Sirajee Shaqiqul Islam is a Bangladeshi Immunologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelImm('Dr. Arifur Rahman', 'images/imm/i5.png','Immunologist','4.9','191','Dr. Arifur Rahman is a Bangladeshi Immunologist.\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),

    ];
  }
}

//Dentist
class ModelDen{
  String image;
  String post;
  String name;
  String review;
  String ratings;
  String biography;
  String map;

  ModelDen(this.name,this.image,this.post,this.ratings,this.review,this.biography,this.map);
  static List<ModelDen> generatedlist (){
    return[
      ModelDen('Dr. Jashim Uddin', 'images/den/d1.png','Dentist','4.8','220','Dr. Jashim Uddin is a Bangladeshi Dentist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelDen('Dr. Amit Patil', 'images/den/d2.png','Dentist','4.9','166','Dr. Amit Patil is a Bangladeshi Dentist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelDen('Dr. Mostaque H Sattar', 'images/den/d3.png','Dentist','4.9','187','Dr. Mostaque H Sattar is a Bangladeshi Dentist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelDen('Dr. Md. Ruhul Amin', 'images/den/d4.png','Dentist','4.8','195','Dr. Md. Ruhul Amin is a Bangladeshi Dentist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),
      ModelDen('Dr. V. Iyappan Shankar', 'images/den/d5.png','Dentist','4.9','190','Dr. V. Iyappan Shankar is a Bangladeshi Dentist\nHe Practices general at Elisabeth\nHospital in Semarang...','images/map.png'),

    ];
  }
}