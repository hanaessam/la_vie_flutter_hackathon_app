import 'dart:async';

import 'package:flutter/material.dart';
import 'package:la_vie_app/models/product_api.dart';
import 'package:la_vie_app/views/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late StreamController _streamController;
  late Stream _stream;
  late ProductsApi _productsApi;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    getProducts();
  }

  getProducts() async {
    var response = await ProductsApi().getProducts();
    print(response);
    _streamController.add(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var myData = [];
                myData = snapshot.data as List<dynamic>;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5,
                    childAspectRatio: 1 / 1.4,
                  ),
                  itemCount: myData.length,
                  itemBuilder: (context, i) => Center(
                    child: ProductCard(
                      i,
                      myData[i],
                    ),
                  ),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Center(child: AppLogo()),
// TextField(
// decoration: InputDecoration(
// fillColor: kLavieGrey,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7),
// borderSide: const BorderSide(
// color: kLavieGrey,
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7),
// borderSide: BorderSide(color: Colors.grey),
// ),
// filled: true,
// hintText: 'Search',
// prefixIcon: Icon(
// Ionicons.search,
// color: Colors.grey,
// ),
//
// ),
// ),
// Container(
//
// width: MediaQuery.of(context).size.width *0.14,
// height: MediaQuery.of(context).size.height *0.07,
// child: Icon(Ionicons.cart_outline, color: Colors.white,),
// decoration: BoxDecoration(
// color: kLavieGreen,
// borderRadius: BorderRadius.circular(15),
// ),
// ),
// Container(
// width: MediaQuery.of(context).size.width *0.5,
// height: MediaQuery.of(context).size.height *0.25,
// child: Text(_products.name),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(15),
// boxShadow: [BoxShadow(
// color: Colors.black.withOpacity(0.1),
// spreadRadius: 3,
// blurRadius: 5,
// offset: Offset(3, 5),
// )]
// ),
// ),
//
//
// ],
//
// )

/* ,*/

//Container(
//   width: MediaQuery.of(context).size.width *0.14,
//   height: MediaQuery.of(context).size.height *0.07,
//   child: Icon(Ionicons.cart_outline, color: Colors.white,),
//   decoration: BoxDecoration(
//     color: kLavieGreen,
//     borderRadius: BorderRadius.circular(15),
//   ),
// )
