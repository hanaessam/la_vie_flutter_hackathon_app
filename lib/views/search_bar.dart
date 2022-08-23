import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: kLavieGrey,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: kLavieGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          filled: true,
          hintText: 'Search',
          prefixIcon: const Icon(
            Ionicons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

