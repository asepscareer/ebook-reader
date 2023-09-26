import '../constanta/imports.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final ProductApi productApi = ProductApi();

  @override
  void initState() {
    super.initState();
    productApi.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Constanta.primaryColor,
        title: const Text("List Product"),
      ),
      body: SafeArea(
        child: listProducts(),
      ),
    );
  }

  FutureBuilder<ProductData?> listProducts() {
    return FutureBuilder<ProductData?>(
        future: productApi.getData(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.00),
              child: ListView.builder(
                itemCount: snapshots.data?.products.length,
                itemBuilder: (context, index) {
                  final product = snapshots.data?.products;
                  return Card(
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductDetail(
                                images: product![index].images,
                              );
                            },
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                product![index].thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product![index].title.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    "\$${product![index].price.toString()}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    product![index].description.toString(),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text("Notifications"),
                                            content: const Text("Unavailable!"),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text("Ok"),
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: const Text("Buy"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
