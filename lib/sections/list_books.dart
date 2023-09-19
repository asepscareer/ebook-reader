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
          mainAxisExtent: 200,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(style: BorderStyle.none),
                        image: const DecorationImage(
                          alignment: Alignment.bottomLeft,
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "images/book-card.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
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
                    margin: const EdgeInsets.only(
                      top: 5,
                      left: 20,
                      bottom: 10,
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
