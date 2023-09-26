import 'dart:math';

class LoremIpsumAPI {

  final _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  String getText(int length) => String.fromCharCodes(
    Iterable.generate(
      length,
          (_) => _chars.codeUnitAt(
        _rnd.nextInt(_chars.length),
      ),
    ),
  );
}
