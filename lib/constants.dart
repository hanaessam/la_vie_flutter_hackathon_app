import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.35,
      child: Image.asset('images/logopresentation.png'),
    );
  }
}


const kLavieGreen = Color(0xFF1ABC00);
const kLavieGrey = Color(0xFFeaeaea);
const kLavieLightGreen = Color(0xFFF3FEF1);
const kLavieDarkGreen =Color(0xFF1D592C);


const baseUrl = "https://lavie.orangedigitalcenteregypt.com";

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .045,
      decoration: BoxDecoration(
        color: kLavieGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('Add To Cart',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
    );
  }
}


class changeIcon extends StatelessWidget {
  const changeIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: kLavieDarkGreen,
          borderRadius: BorderRadius.circular(10)),
      child: Container(
        color: Colors.white,
        child: const Icon(Icons.compare_arrows, color: kLavieDarkGreen,),),);
  }
}

const kNotificationStyle =TextStyle(fontWeight: FontWeight.bold);