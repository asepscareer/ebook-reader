import '../constanta/imports.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              constraints: const BoxConstraints(
                minHeight: 30.0,
                minWidth: 300,
                maxHeight: 35.0,
                maxWidth: 700,
              ),
              child: SearchBar(
                elevation: const MaterialStatePropertyAll(0.5),
                hintText: "Search Books...",
                onTap: () {},
                hintStyle: const MaterialStatePropertyAll(
                  TextStyle(
                    color: Colors.grey,
                  ),
                ),
                leading: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              minHeight: 50,
              minWidth: 50,
              maxHeight: 50,
              maxWidth: 50,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Nofitication"),
                        content: const Text("Filter is unavailable!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Ok"),
                          ),
                        ],
                      );
                    },
                  );
                },
                borderRadius: BorderRadius.circular(35),
                child: const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
