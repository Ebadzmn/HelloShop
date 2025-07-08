class ProductModel {
  final int id;
  final String name;
  final String description;
  final String subdescription;
  final double price;
  final double rating;
  final List<String> images; // Changed from String to List<String>
  final int categoryId;
  final bool isFavourite;
  final bool isPopular;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.images,
    required this.subdescription,
    required this.categoryId,
    this.isFavourite = false,
    this.isPopular = false,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? '',
      subdescription: json['subdescription'] ?? '',
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      images: List<String>.from(json['images']), // parse image list
      categoryId: json['categoryId'],
      isFavourite: json['isFavourite'] ?? false,
      isPopular: json['isPopular'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'subdescription': subdescription,
      'price': price,
      'rating': rating,
      'images': images,
      'categoryId': categoryId,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
    };
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, categoryId: $categoryId)';
  }
}
