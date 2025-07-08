class CategoryModel {
  final int Id;
  final String image;
  final String categoryName;

  CategoryModel(
      {required this.Id, required this.image, required this.categoryName});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        Id: json['id'],
        image: json['image'],
        categoryName: json['categoryName']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': Id,
      'image': image,
      'categoryName': categoryName,
    };
  }
}
