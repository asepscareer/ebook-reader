import '../constanta/imports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final responsive = Responsive(screenWidth);

    String deviceDetector() => responsive.isMobile()
        ? 'Mobile'
        : responsive.isTablet()
            ? 'Tablet'
            : 'PC';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 60,
            shadowColor: Colors.white,
            backgroundColor: Colors.white10,
            bottom: ebookAppBar(deviceDetector())),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const SearchBox(),
              const ReadingHistory(),
              myBooks(),
              const ListBooks(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize ebookAppBar(String device) {
    return PreferredSize(
      preferredSize: const Size(0, 0),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            const Icon(
              Icons.book_outlined,
              color: Colors.blue,
            ),
            Text(
              " E-Book Reader $device",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container myBooks() {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(
        left: 5,
        top: 10,
        bottom: 10,
      ),
      child: const Text(
        "My Books",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
