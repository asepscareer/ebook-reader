import '../constanta/imports.dart';

class ListBooks extends StatelessWidget {
  const ListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    int totalSquare() => Responsive(screenWidth).isMobile() ? 2 : 3;

    return Flexible(
      flex: 1,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: totalSquare(),
          crossAxisSpacing: widthDevice * 0.02,
          mainAxisSpacing: widthDevice * 0.02,
          mainAxisExtent: 235,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/book");
              },
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(style: BorderStyle.none),
                        image: DecorationImage(
                          alignment: Alignment.bottomLeft,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://picsum.photos/id/$index/5000/3333",
                            scale: 1,
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
