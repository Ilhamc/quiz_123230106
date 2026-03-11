class FoodModel {
  final String name;
  final String category;
  final int price;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  final double rating;

  const FoodModel({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    required this.rating,
  });
}

const List<FoodModel> foodList = [
  FoodModel(
    name: 'Nasi Goreng Spesial',
    category: 'Makanan Utama',
    price: 28000,
    imageUrl:
        'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?auto=format&fit=crop&w=900&q=80',
    description:
        'Nasi goreng dengan bumbu khas Indonesia, telur, ayam suwir, dan kerupuk udang. Cocok untuk makan siang atau makan malam.',
    ingredients: ['Nasi', 'Ayam', 'Telur', 'Kecap', 'Bawang', 'Kerupuk'],
    rating: 4.8,
  ),
  FoodModel(
    name: 'Sate Ayam Madura',
    category: 'Makanan Tradisional',
    price: 32000,
    imageUrl:
        'https://images.unsplash.com/photo-1529563021893-cc83c992d75d?auto=format&fit=crop&w=900&q=80',
    description:
        'Potongan ayam bakar dengan saus kacang gurih manis, disajikan bersama lontong dan acar segar.',
    ingredients: ['Daging Ayam', 'Bumbu Kacang', 'Lontong', 'Kecap', 'Acar'],
    rating: 4.7,
  ),
  FoodModel(
    name: 'Mie Ayam Jamur',
    category: 'Mie',
    price: 22000,
    imageUrl:
        'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?auto=format&fit=crop&w=900&q=80',
    description:
        'Mie kenyal dengan topping ayam manis gurih, jamur, dan kuah kaldu hangat yang ringan.',
    ingredients: ['Mie', 'Ayam', 'Jamur', 'Sawi', 'Kaldu Ayam'],
    rating: 4.6,
  ),
  FoodModel(
    name: 'Bakso Urat Komplit',
    category: 'Berkuah',
    price: 25000,
    imageUrl:
        'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=900&q=80',
    description:
        'Bakso urat sapi dengan mie, bihun, tahu, dan kuah kaldu yang kaya rasa.',
    ingredients: ['Bakso Sapi', 'Mie', 'Bihun', 'Tahu', 'Seledri'],
    rating: 4.5,
  ),
  FoodModel(
    name: 'Gado-Gado Jakarta',
    category: 'Sayuran',
    price: 24000,
    imageUrl:
        'https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=900&q=80',
    description:
        'Campuran sayuran rebus, tahu, tempe, dan telur dengan saus kacang kental yang legit.',
    ingredients: ['Kol', 'Bayam', 'Tahu', 'Tempe', 'Telur', 'Saus Kacang'],
    rating: 4.4,
  ),
  FoodModel(
    name: 'Es Cendol Durian',
    category: 'Minuman Penutup',
    price: 18000,
    imageUrl:
        'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=900&q=80',
    description:
        'Minuman manis dingin dengan cendol, santan, gula aren, dan topping durian lembut.',
    ingredients: ['Cendol', 'Santan', 'Gula Aren', 'Es Batu', 'Durian'],
    rating: 4.3,
  ),
];
