import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/models/product_model.dart';

class ProductCard extends StatelessWidget {

  final int index;
  final dynamic data ;
  late Products _products;

  ProductCard( this.index, this.data, {Key? key}) : super(key: key){
    _products = Products(data['name'],  "https://lavie.orangedigitalcenteregypt.com"+data['imageUrl'], data['price']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .40,
      height: MediaQuery.of(context).size.height * .30,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * .01),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * .05),
          boxShadow:const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 0.5,
              offset: Offset(2.0,2.0),
              blurRadius: 1.0,
            ),
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.2 ,
            width:MediaQuery.of(context).size.width * 0.25 ,
              child: Image(image: NetworkImage(_products.image))),
          Expanded(
            child: Text(
              _products.name.toString().toUpperCase(),
              style:  TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}