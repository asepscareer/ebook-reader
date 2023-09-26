import '../constanta/imports.dart';

class ReadingHistory extends StatelessWidget {
  const ReadingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Confirmation"),
              content: const Text("Continue Reading?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/book");
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"),
                ),
              ],
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(
                minWidth: 75,
                minHeight: 120,
              ),
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(style: BorderStyle.none),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/book-card.jpg",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
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
                    margin: const EdgeInsets.only(top: 5, right: 15),
                    child: const Text(
                      "Josh Haze",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 15),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Continue Reading",
                      style: TextStyle(
                        color: Constanta.primaryColor,
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
