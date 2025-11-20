import 'package:flutter/material.dart';

void main() {
  runApp(MyShopMiniApp());
}

class MyShopMiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop Mini',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Color(0xFFF8F9FA),
        fontFamily: 'Poppins',
      ),
      home: HomeScreen(),
    );
  }
}

// Model untuk Kategori
class Category {
  final String name;
  final IconData icon;
  final Color color;
  final int productCount;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.productCount,
  });
}

// Model untuk Product
class Product {
  final String name;
  final String category;
  final double price;
  final String imageUrl;
  final String description;
  final double rating;
  final int reviews;
  final String brand;
  final List<String> features;
  final bool inStock;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.brand,
    required this.features,
    this.inStock = true,
  });
}

// Data Dummy
final List<Category> categories = [
  Category(name: 'Makanan', icon: Icons.restaurant_menu, color: Color(0xFFFF6B6B), productCount: 4),
  Category(name: 'Minuman', icon: Icons.local_cafe, color: Color(0xFF4ECDC4), productCount: 4),
  Category(name: 'Elektronik', icon: Icons.devices_other, color: Color(0xFF95E1D3), productCount: 4),
];

final List<Product> products = [
  // Makanan
  Product(
    name: 'Nasi Goreng Special',
    category: 'Makanan',
    price: 25000,
    imageUrl: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=400',
    description: 'Nasi goreng spesial dengan bumbu rahasia, telur mata sapi, ayam suwir, dan sayuran segar pilihan. Disajikan dengan kerupuk dan acar.',
    rating: 4.8,
    reviews: 156,
    brand: 'Warung Pak Budi',
    features: ['Pedas Sedang', 'Porsi Besar', 'Halal', 'Fresh Ingredients'],
    inStock: true,
  ),
  Product(
    name: 'Mie Ayam Bakso',
    category: 'Makanan',
    price: 20000,
    imageUrl: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=400',
    description: 'Mie ayam dengan bakso sapi kenyal, ayam suwir, dan pangsit goreng. Kuah kaldu sapi yang gurih dan nikmat.',
    rating: 4.6,
    reviews: 203,
    brand: 'Mie Ayam Ibu Rina',
    features: ['Kuah Gurih', 'Bakso Kenyal', 'Pangsit Crispy', 'Ayam Suwir'],
    inStock: true,
  ),
  Product(
    name: 'Sate Ayam',
    category: 'Makanan',
    price: 30000,
    imageUrl: 'https://images.unsplash.com/photo-1529563021893-cc83c992d75d?w=400',
    description: 'Sate ayam bakar dengan bumbu kacang khas yang legit. 10 tusuk sate dengan lontong, kecap manis, dan sambal.',
    rating: 4.9,
    reviews: 412,
    brand: 'Sate Pak Haji',
    features: ['Bumbu Kacang', '10 Tusuk', 'Bakar Arang', 'Include Lontong'],
    inStock: true,
  ),
  Product(
    name: 'Burger Beef Deluxe',
    category: 'Makanan',
    price: 35000,
    imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
    description: 'Burger premium dengan 100% daging sapi, keju cheddar, selada segar, tomat, dan saus spesial dalam roti brioche.',
    rating: 4.7,
    reviews: 328,
    brand: 'Burger House',
    features: ['100% Beef', 'Premium Cheese', 'Brioche Bun', 'Special Sauce'],
    inStock: true,
  ),
  
  // Minuman
  Product(
    name: 'Es Teh Manis',
    category: 'Minuman',
    price: 5000,
    imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
    description: 'Teh manis dingin yang menyegarkan, dibuat dari teh pilihan dengan kadar gula yang pas. Cocok untuk menemani makanan.',
    rating: 4.5,
    reviews: 892,
    brand: 'Kedai Minuman',
    features: ['Menyegarkan', 'Gula Pas', 'Teh Pilihan', 'Dingin'],
    inStock: true,
  ),
  Product(
    name: 'Kopi Latte Premium',
    category: 'Minuman',
    price: 25000,
    imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
    description: 'Kopi latte premium dengan espresso double shot dan susu full cream. Dilengkapi dengan latte art yang cantik.',
    rating: 4.8,
    reviews: 567,
    brand: 'Coffee Corner',
    features: ['Double Shot', 'Full Cream', 'Latte Art', 'Premium Beans'],
    inStock: true,
  ),
  Product(
    name: 'Jus Alpukat Segar',
    category: 'Minuman',
    price: 15000,
    imageUrl: 'https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?w=400',
    description: 'Jus alpukat segar dengan topping cokelat dan susu kental manis. Dibuat dari alpukat pilihan yang matang sempurna.',
    rating: 4.7,
    reviews: 445,
    brand: 'Juice Station',
    features: ['Alpukat Segar', 'Topping Cokelat', 'Creamy', 'No Sugar Added'],
    inStock: true,
  ),
  Product(
    name: 'Smoothie Bowl Berry',
    category: 'Minuman',
    price: 35000,
    imageUrl: 'https://images.unsplash.com/photo-1590301157890-4810ed352733?w=400',
    description: 'Smoothie bowl dengan campuran berry segar, granola, chia seeds, dan madu. Kaya akan antioksidan dan nutrisi.',
    rating: 4.9,
    reviews: 234,
    brand: 'Healthy Bowl',
    features: ['Fresh Berry', 'Granola', 'Chia Seeds', 'Rich Antioxidant'],
    inStock: true,
  ),
  
  // Elektronik
  Product(
    name: 'Smartphone XZ Pro',
    category: 'Elektronik',
    price: 4500000,
    imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
    description: 'Smartphone flagship dengan prosesor octa-core, RAM 8GB, storage 256GB. Layar AMOLED 6.7 inch dengan refresh rate 120Hz.',
    rating: 4.8,
    reviews: 1243,
    brand: 'TechPro',
    features: ['108MP Camera', '8GB RAM', 'AMOLED 120Hz', '5000mAh Battery'],
    inStock: true,
  ),
  Product(
    name: 'Laptop Gaming Elite',
    category: 'Elektronik',
    price: 15000000,
    imageUrl: 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=400',
    description: 'Laptop gaming dengan Intel Core i7 Gen 12, NVIDIA RTX 4060, RAM 16GB DDR5, SSD 1TB NVMe. Layar 15.6 inch 165Hz.',
    rating: 4.9,
    reviews: 678,
    brand: 'GameMax',
    features: ['RTX 4060', 'i7 Gen 12', '165Hz Display', 'RGB Keyboard'],
    inStock: true,
  ),
  Product(
    name: 'Wireless Earbuds Pro',
    category: 'Elektronik',
    price: 850000,
    imageUrl: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=400',
    description: 'TWS premium dengan Active Noise Cancelling, audio Hi-Res, dan baterai tahan hingga 30 jam. IPX5 water resistant.',
    rating: 4.7,
    reviews: 2341,
    brand: 'SoundWave',
    features: ['ANC', 'Hi-Res Audio', '30h Battery', 'IPX5'],
    inStock: true,
  ),
  Product(
    name: 'Smart Watch Ultra',
    category: 'Elektronik',
    price: 2500000,
    imageUrl: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=400',
    description: 'Smartwatch dengan monitor kesehatan lengkap, GPS built-in, dan baterai 7 hari. Layar AMOLED always-on display.',
    rating: 4.8,
    reviews: 892,
    brand: 'FitTech',
    features: ['Heart Rate', 'SpO2', 'GPS', '7 Days Battery'],
    inStock: true,
  ),
];

// HOME SCREEN
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.05;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(Icons.menu, size: 24, color: Color(0xFF2D3748)),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF4ECDC4), Color(0xFF44A08D)],
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Color(0xFF4ECDC4), size: 24),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                
                // Title
                Text(
                  'MyShop Mini',
                  style: TextStyle(
                    fontSize: screenWidth * 0.085,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3748),
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Belanja mudah, cepat, dan terpercaya',
                  style: TextStyle(
                    fontSize: screenWidth * 0.038,
                    color: Color(0xFF718096),
                  ),
                ),
                SizedBox(height: 25),
                
                // Search Bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFF4ECDC4), size: 22),
                      SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari produk favorit...',
                            hintStyle: TextStyle(color: Color(0xFFCBD5E0)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF4ECDC4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.tune, color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                
                // Categories Title
                Text(
                  'Kategori',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3748),
                  ),
                ),
                SizedBox(height: 18),
                
                // Categories Row (3 Cards Horizontal)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: categories.map((category) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: CategoryCard(category: category),
                      ),
                    );
                  }).toList(),
                ),
                
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Category Card Widget - Horizontal Compact Design
class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(category: category),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: category.color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                category.icon,
                size: 32,
                color: category.color,
              ),
            ),
            SizedBox(height: 12),
            Text(
              category.name,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4),
            Text(
              '${category.productCount}',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF718096),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PRODUCT LIST SCREEN
class ProductListScreen extends StatelessWidget {
  final Category category;

  ProductListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryProducts = products
        .where((product) => product.category == category.name)
        .toList();
    
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.05;
    final crossAxisCount = screenWidth > 600 ? 3 : 2;
    final childAspectRatio = screenWidth > 600 ? 0.7 : 0.68;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF4ECDC4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                        Text(
                          '${categoryProducts.length} produk ditemukan',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF718096),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7FAFC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Color(0xFF2D3748),
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            
            // Product Grid
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(horizontalPadding),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: childAspectRatio,
                ),
                itemCount: categoryProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: categoryProducts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Stack(
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                    image: DecorationImage(
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      size: 16,
                      color: Color(0xFFFF6B6B),
                    ),
                  ),
                ),
                if (product.rating >= 4.7)
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xFF4ECDC4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.white, size: 12),
                          SizedBox(width: 3),
                          Text(
                            product.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            
            // Product Info
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.brand,
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF4ECDC4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2D3748),
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                        SizedBox(width: 3),
                        Text(
                          product.rating.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                        Text(
                          ' (${product.reviews})',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF718096),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Rp ${_formatPrice(product.price)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4ECDC4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatPrice(double price) {
    if (price >= 1000000) {
      return '${(price / 1000000).toStringAsFixed(1)}jt';
    } else if (price >= 1000) {
      return '${(price / 1000).toStringAsFixed(0)}k';
    }
    return price.toStringAsFixed(0);
  }
}

// PRODUCT DETAIL SCREEN
class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Content
          SingleChildScrollView(
            child: Column(
              children: [
                // Product Image Header
                Container(
                  height: screenHeight * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Product Details Card
                Container(
                  transform: Matrix4.translationValues(0, -30, 0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Brand and Rating
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4ECDC4).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    product.brand,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF4ECDC4),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFF3E0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star, color: Color(0xFFFFA726), size: 16),
                                      SizedBox(width: 4),
                                      Text(
                                        '${product.rating}',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF57C00),
                                        ),
                                      ),
                                      Text(
                                        ' (${product.reviews})',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF8D6E63),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            
                            // Product Name
                            Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3748),
                                height: 1.3,
                              ),
                            ),
                            SizedBox(height: 12),
                            
                            // Stock Status
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: product.inStock ? Color(0xFF48BB78) : Color(0xFFFC8181),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  product.inStock ? 'Stok Tersedia' : 'Stok Habis',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: product.inStock ? Color(0xFF48BB78) : Color(0xFFFC8181),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            
                            // Price
                            Row(
                              children: [
                                Text(
                                  'Rp ${product.price.toStringAsFixed(0)}',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4ECDC4),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border),
                                  color: Color(0xFFFF6B6B),
                                  iconSize: 28,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 10),
                      
                      // Features Section
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fitur Unggulan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3748),
                              ),
                            ),
                            SizedBox(height: 15),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: product.features.map((feature) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7FAFC),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFF4ECDC4).withOpacity(0.3),
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        size: 16,
                                        color: Color(0xFF4ECDC4),
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        feature,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 10),
                      
                      // Description Section
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi Produk',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3748),
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              product.description,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF718096),
                                height: 1.7,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 10),
                      
                      // Product Info Grid
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Informasi Produk',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3748),
                              ),
                            ),
                            SizedBox(height: 15),
                            _buildInfoRow(Icons.category, 'Kategori', product.category),
                            _buildInfoRow(Icons.store, 'Brand', product.brand),
                            _buildInfoRow(Icons.star_rate, 'Rating', '${product.rating} dari 5.0'),
                            _buildInfoRow(Icons.reviews, 'Review', '${product.reviews} ulasan'),
                            _buildInfoRow(Icons.inventory_2, 'Status', product.inStock ? 'Tersedia' : 'Habis'),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 120),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Top Navigation Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xFF2D3748),
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.95),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.share,
                        color: Color(0xFF2D3748),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Bottom Action Buttons
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 20,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF4ECDC4).withOpacity(0.3),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xFF4ECDC4),
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.white),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('${product.name} berhasil ditambahkan!'),
                                  ),
                                ],
                              ),
                              backgroundColor: Color(0xFF48BB78),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4ECDC4),
                          padding: EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Beli Sekarang',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFF7FAFC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 18, color: Color(0xFF4ECDC4)),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF718096),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D3748),
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