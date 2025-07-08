import 'package:e_commarce_v2_flutter/data/models/product_model.dart';

final List<ProductModel> dummyProducts = [
  ProductModel(
    id: 1,
    name: 'Wireless Headphones',
    description: 'High-quality noise cancelling wireless headphones.',
    subdescription: '1pcs priceG',
    price: 99.99,
    rating: 4.5,
    categoryId: 1,
    isFavourite: true,
    isPopular: true,
    images: [
      "https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg",
      "https://example.com/images/headphones2.png",
      "https://example.com/images/headphones3.png"
    ],
  ),
  ProductModel(
    id: 2,
    name: 'Smart Watch',
    description: 'Smart watch with heart rate monitor and GPS.',
    subdescription: '1pcs priceG',
    price: 149.99,
    rating: 4.2,
    images: [
      "https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg",
      "https://example.com/images/headphones2.png",
      "https://example.com/images/headphones3.png"
    ],
    categoryId: 1,
    isFavourite: false,
    isPopular: true,
  ),
  ProductModel(
    id: 3,
    name: 'Leather Wallet',
    description: 'Premium quality leather wallet for men.',
    subdescription: '1pcs priceG',
    price: 29.99,
    rating: 4.0,
    images: [
      "https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg",
      "https://example.com/images/headphones2.png",
      "https://example.com/images/headphones3.png"
    ],
    categoryId: 2,
    isFavourite: false,
    isPopular: false,
  ),
  ProductModel(
    id: 4,
    name: 'Sneakers',
    description: 'Comfortable and stylish running sneakers.',
    subdescription: '1pcs priceG',
    price: 79.99,
    rating: 4.3,
    images: [
      " https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg",
      "https://example.com/images/headphones2.png",
      "https://example.com/images/headphones3.png"
    ],
    categoryId: 2,
    isFavourite: true,
    isPopular: true,
  ),
  ProductModel(
    id: 5,
    name: 'Bluetooth Speaker',
    description: 'Portable Bluetooth speaker with deep bass.',
    subdescription: '1pcs priceG',
    price: 59.99,
    rating: 4.6,
    images: [
      "https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg",
      "https://example.com/images/headphones2.png",
      "https://example.com/images/headphones3.png"
    ],
    categoryId: 1,
    isFavourite: true,
    isPopular: true,
  ),
];
