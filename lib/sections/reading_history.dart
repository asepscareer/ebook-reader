import 'package:flutter/material.dart';

class ReadingHistory extends StatelessWidget {
  const ReadingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    double widhtDevice = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: widhtDevice * 0.2,
              width: widhtDevice * 0.15,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(style: BorderStyle.none),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "images/book-card.jpg",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                      top: widhtDevice * 0.03,
                      right: widhtDevice * 0.015,
                    ),
                    child: const Text(
                      "Lean UX: Applying Lean Principles to Improve User Experience",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Josh Haze",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: widhtDevice * 0.025),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Continue Reading",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
