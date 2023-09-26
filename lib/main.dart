import 'constanta/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, Key? type});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/book': (context) => const BookReading(),
        '/menu': (context) => const NavigationMenu(),
      },
      home: const SafeArea(
        child: NavigationMenu(),
      ),
    );
  }
}
