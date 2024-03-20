import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// Definisi model Product
class Product {
  final String name;
  final String image;
  final String price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });
}

// List produk
List<Product> products = [
  Product(
    name: 'Kaos Polos',
    image: 'assets/images/kaos_polos.jpeg',
    price: '100.000',
  ),
  Product(
    name: 'Smartphone',
    image: 'assets/images/smartphone.jpeg',
    price: '25.000.000',
  ),
  Product(
    name: 'Laptop',
    image: 'assets/images/laptop.jpeg',
    price: '8.000.000',
  ),
  // Tambahkan produk lainnya sesuai kebutuhan Anda
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Inisialisasi selected index

  // List widget untuk setiap halaman
  static const List<Widget> _halaman = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // navbar top
          Container(
            width:
                double.infinity, // biar bisa ukuran containernya gak terbatas
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.5),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: ClipOval(
                          // membantu supaya bisa bulat foto profilnya
                          child: Image.asset(
                            'assets/images/logo_lapak.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Muhammad Zulfadly',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Apartemen Buah Batu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bagian ini bisa discroll
          Expanded(
            // untuk bisa kasih ruang lebih buat si widget yg mau dimasukin, jadi sisa2 yg ada itu juga bisa dimasukin
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Bagian pencarian produk
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mau cari produk apa nii?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(1.5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              icon: Icon(Icons.filter_list),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Slide banner
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection:
                          Axis.horizontal, //memberikan scroll arahnya
                      children: [
                        Container(
                          width: 300,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Slide Banner 1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Slide Banner 2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Slide Banner 3',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // Kategori
                  GridView.count(
                    shrinkWrap:
                        true, //supaya bisa menyesuaikan ukuran tata letaknya
                    crossAxisCount:
                        4, // untuk menemtukan jumlah item yg ditampilkan dalam satu baris/kolom
                    children: [
                      // Kategori pertama
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Icon(Icons.shopping_basket,
                                size: 40, color: Colors.blue),
                            SizedBox(height: 8),
                            Text('Pakaian', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      // Kategori kedua
                      GestureDetector(
                        onTap: () {
                          // Tambahkan aksi yang ingin dilakukan ketika kategori diklik
                        },
                        child: Column(
                          children: [
                            Icon(Icons.tv, size: 40, color: Colors.green),
                            SizedBox(height: 8),
                            Text('Elektronik', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      // Kategori ketiga
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Icon(Icons.smartphone,
                                size: 40, color: Colors.orange),
                            SizedBox(height: 8),
                            Text('Smartphone', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      // Kategori keempat
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Icon(Icons.more_horiz,
                                size: 40, color: Colors.grey),
                            SizedBox(height: 8),
                            Text('Lainnya', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          'PRODUK TERBARU',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // buat scrolling, tapi disini gak bisa discroll atau statis
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //pengaturan tata letak nya
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: products
                            .length, // Ganti dengan jumlah produk yang Anda miliki
                        itemBuilder: (BuildContext context, int index) {
                          // Ambil data produk dari daftar produk
                          var product = products[index];
                          // Buat card untuk setiap produk
                          return Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Gambar produk
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(8),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(product.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                // Nama produk
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product.name,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // Harga produk
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Rp ${product.price}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                // Button Beli
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Tambahkan aksi yang ingin dilakukan ketika tombol beli diklik
                                      },
                                      child: Text(
                                        'Beli',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Bottom Navigation Bar
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rocket),
                label: 'Eksplorasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_box),
                label: 'Posting',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorit',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
