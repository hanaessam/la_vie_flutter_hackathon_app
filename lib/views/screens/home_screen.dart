import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie_app/models/APIs/product_api.dart';
import 'package:la_vie_app/views/product_card.dart';
import '../../constants.dart';
import '../search_bar.dart';
import '../search_filter_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late StreamController _streamController;
  late Stream _stream;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    getProducts();
  }

  getProducts() async {
    var response = await ProductsApi().getProducts();
    _streamController.add(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: StreamBuilder(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var myData = [];
                myData = snapshot.data as List<dynamic>;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AppLogo(),
                    Row(
                      children: [
                        Flexible(
                          flex: 5,
                          child: SearchBar(),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: const Icon(
                              Ionicons.cart_outline,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: kLavieGreen,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(child: SearchFilterButton(label: 'All')),
                        Flexible(child: SearchFilterButton(label: 'Plants')),
                        Flexible(child: SearchFilterButton(label: 'Tools')),
                        Flexible(child: SearchFilterButton(label: 'Seeds')),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.width * 0.5,
                            childAspectRatio: 1 / 1.72,
                          ),
                          itemCount: myData.length,
                          itemBuilder: (context, i) => Center(
                            child: ProductCard(
                              i,
                              myData[i],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}

