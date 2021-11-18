import 'package:flutter/material.dart';

class item {
  String label;
  String imageURL;
  int price;
  String iteamdetail;
//List<Ingredient> ingredients;

  item(
    this.label,
    this.imageURL,
    this.price,
    this.iteamdetail,
  );

  static List<item> samples = [
    item('Black T-Shirt', 'assets/btshirt.png', 28,
        "pure 100% cotton shirt\n Color: black \n Fabric : Cotton \n    **BEST SELLING**"),
    item('Blue jeans', 'assets/bjeans.png', 150,
        "pure 100% jeans pant\n Color: Dark Blue \n Fabric : jeans\n    **BEST SELLING**"),
    item('Check shirt', 'assets/chkshirt.png', 90,
        "pure 100% cotton check shirt\n Color: black \n Fabric : Cotton \n    **BEST SELLING**"),
    item('Shirt', 'assets/chkshirt2.png', 99,
        "pure 100% cotton Check shirt\n Color: grey \n Fabric : Cotton \n    **BEST SELLING**"),
    item('shoes ', 'assets/shoe.png', 45,
        "pure 100% leather shoes\n Color: black \n Fabric : N\\A \n    **BEST SELLING**"),
    item('jacket', 'assets/jacket1.png', 65,
        "pure 100% fox leather \n Color: black \n Fabric : leather \n    **BEST SELLING**"),
  ];
}
