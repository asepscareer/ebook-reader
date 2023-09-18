import 'package:flutter/material.dart';

class ListBooks extends StatelessWidget {
  const ListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    double widhtDevice = MediaQuery.of(context).size.height;
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: widhtDevice * 0.02,
          mainAxisSpacing: widhtDevice * 0.02,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(style: BorderStyle.none),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "images/book-card.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: widhtDevice * 0.03,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Apllying Lean Principles to Improve User Experience",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: widhtDevice * 0.03,
                      vertical: widhtDevice * 0.01,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text("Author"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
