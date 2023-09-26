import '../constanta/imports.dart';

class BookReading extends StatefulWidget {
  const BookReading({super.key});

  @override
  State<BookReading> createState() => _BookReadingState();
}

class _BookReadingState extends State<BookReading> {
  int count = 0;

  void _count() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _count,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Constanta.primaryColor,
          child: const Icon(Icons.add),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          highlightColor: Constanta.primaryColor,
          onPressed: () {
            Navigator.pushNamed(context, "/menu");
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Constanta.primaryColor,
            radius: 135,
            child: CircleAvatar(
              backgroundColor: Colors.white38,
              radius: 125,
              child: CircleAvatar(
                radius: 115,
                child: Text(
                  "Click $count",
                  style: const TextStyle(fontSize: 25),
                ),
              ), //CircleAvatar
            ), //CircleAvatar
          ), //CircleAvatar
        ),
      ),
    );
  }
}
