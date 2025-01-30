import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.cart),
            onPressed: () {
              // Sepet sayfasına yönlendirme
              context.go("/cart");
            },
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Hoş Geldiniz!",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home, color: Colors.blue),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.search, color: Colors.blue),
              title: const Text('Geçmiş'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person, color: Colors.blue),
              title: const Text('Profil'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings, color: Colors.blue),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          // Ürünlerin gösterileceği grid yapısı
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // İki sütunlu grid
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75, // Ürün kartlarının en-boy oranı
                ),
                itemCount: 4, // Ürün sayısı 4 olarak güncellendi
                itemBuilder: (context, index) {
                  return ProductCard(index: index);
                },
              ),
            ),
          ),
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: const BottomMenu(),
    );
  }
}

// Ürün kartı widget'ı
class ProductCard extends StatelessWidget {
  final int index;

  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // Ürün adları, fiyatları ve resim yolları
    final List<Map<String, dynamic>> products = [
      {
        "name": "Spor Ayakkabı",
        "price": 299.99,
        "image": "assets/images/product_1.jpg", // assets/images klasöründeki resim
      },
      {
        "name": "Güneş Gözlüğü",
        "price": 149.99,
        "image": "assets/images/product_2.jpg", // assets/images klasöründeki resim
      },
      {
        "name": "Kol Saati",
        "price": 599.99,
        "image": "assets/images/product_3.jpg", // assets/images klasöründeki resim
      },
      {
        "name": "Cüzdan",
        "price": 99.99,
        "image": "assets/images/product_4.jpg", // assets/images klasöründeki resim
      },
    ];

    final product = products[index];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ürün resmi
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                product["image"], // Resim yolu dinamik olarak belirleniyor
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          // Ürün bilgileri
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product["name"], // Ürün adı
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  "₺${product["price"]}", // Ürün fiyatı
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Sepete ekleme işlemi
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text(
                    "Sepete Ekle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}