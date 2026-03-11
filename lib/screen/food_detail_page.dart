import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/models/dummy_menu.dart';
import 'package:latihan_kuis_a/screen/food_list_page.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({super.key, required this.food, required this.username});
  final Food food;
  final String username;

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  final TextEditingController _quantityController = TextEditingController(
    text: '1',
  );
  int _quantity = 1;
  late int _totalPrice;

  @override
  void initState() {
    super.initState();
    _totalPrice = widget.food.price;
  }

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  void _checkout() {
    final quantity = int.tryParse(_quantityController.text);

    if (quantity == null || quantity <= 0) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Masukkan jumlah pesanan yang valid.'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    // setState(() {
    //   _quantity = quantity;
    //   _totalPrice = widget.food.price * quantity;
    // });

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Berhasil membeli ${quantity} ${widget.food.name}'),
        duration: Duration(seconds: 2),
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodListPage(username: widget.username),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Makanan'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.food.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          widget.food.category,
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Harga: Rp$_totalPrice',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Harga satuan: Rp${widget.food.price} x $_quantity',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Jumlah Pesanan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _quantityController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Masukkan jumlah barang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _checkout,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.food.description,
                    style: const TextStyle(fontSize: 15, height: 1.5),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bahan Utama',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.food.ingredients
                        .map(
                          (ingredient) => Chip(
                            label: Text(ingredient),
                            backgroundColor: Colors.grey.shade200,
                          ),
                        )
                        .toList(),
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
