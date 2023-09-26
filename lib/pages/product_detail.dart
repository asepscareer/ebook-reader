import '../constanta/imports.dart';

class ProductDetail extends StatefulWidget {
  final List<String> images;

  const ProductDetail({super.key, required this.images});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Image.network(widget.images[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
