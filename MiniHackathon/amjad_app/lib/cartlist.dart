
import 'package:flutter/material.dart';
import 'home.dart';

class Citem {

  late String clabel;
  late String cimageURL;
  late int cprice;
  late String citemdetail;

 Citem( String Clabel ,String CimageURL, int Cprice , String Citemdetail){

  this.clabel = Clabel;
  this.cimageURL=CimageURL;
  this.cprice=Cprice;
  this.citemdetail=Citemdetail;

  List<Citem> Cli=[
    Citem(clabel, cimageURL, cprice, citemdetail),
     Citem(clabel, cimageURL, cprice, citemdetail),
  ];
}

// static List<Citem()> Clists=[
//  Citem(clabel, cimageURL, cprice, citemdetail),
        
// ];

  static List<Citem> Csamples = [
  

    
    Citem('Black T-Shirt', 'assets/chkshirt2.png', 28,
        "pure 100% cotton shirt\n Color: black \n Fabric : Cotton \n    **BEST SELLING**"),
    Citem('Blue jeans', 'assets/bjeans.png', 150,
        "pure 100% jeans pant\n Color: Dark Blue \n Fabric : jeans\n    **BEST SELLING**"),
    Citem('Check shirt', 'assets/chkshirt.png', 90,
        "pure 100% cotton check shirt\n Color: black \n Fabric : Cotton \n    **BEST SELLING**"),
    Citem('Shirt', 'assets/btshirt.png', 99,
        "pure 100% cotton Check shirt\n Color: grey \n Fabric : Cotton \n    **BEST SELLING**"),
    Citem('shoes ', 'assets/shoe.png', 45,
        "pure 100% leather shoes\n Color: black \n Fabric : N\\A \n    **BEST SELLING**"),
    Citem('jacket', 'assets/jacket1.png', 65,
        "pure 100% fox leather \n Color: black \n Fabric : leather \n    **BEST SELLING**"),
  ];
}