import 'dart:convert';

import 'package:dio/dio.dart';

class ProductsApi {
  getProducts() async {
    var list = [];
    try {
      var response = await Dio(
        BaseOptions(
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIzNzRmNDU3NS0wOGYyLTRjMjQtYTExZi05NDQyOGJjMzI4NmQiLCJpYXQiOjE2NjEyNzI1ODYsImV4cCI6MTY2MTQ0NTM4Nn0.OIOif2Z_z7sN_lU9LBBaVPyPeq0tTRyNj7-3Ka8Rg3s"
          },
        ),
      ).get('https://lavie.orangedigitalcenteregypt.com/api/v1/products').then((value) {
        if(value.statusCode == 200){
          list = value.data['data'];
        }
      },);
      return list;
    } catch (e) {
      if(e is DioError){
        print(e.response);
      }
      print(e);
    }
  }
}
