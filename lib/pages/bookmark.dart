import '../constanta/imports.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Bookmark",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
