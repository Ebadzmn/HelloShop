class ProductDetailsModel {
  final List<String> images;
  final String productName;
  final String productDescription;
  final String productQuantity;
  final String productPrice;
  final String productRating;
  final String productKGprice;

  ProductDetailsModel(
      {required this.images,
      required this.productName,
      required this.productDescription,
      required this.productQuantity,
      required this.productPrice,
      required this.productRating,
      required this.productKGprice});
}
