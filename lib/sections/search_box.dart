import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: widthDevice * 0.7,
          height: 50,
          child: SearchBar(
            hintText: "Search Books...",
            onTap: () {},
            hintStyle: const MaterialStatePropertyAll(
              TextStyle(
                color: Colors.grey,
              ),
            ),
            leading: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
          ),
        ),
        SizedBox(
          width: 65,
          height: 65,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(35),
              child: const Icon(Icons.filter),
            ),
          ),
        ),
      ],
    );
  }
}
