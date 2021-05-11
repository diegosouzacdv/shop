import 'package:flutter/material.dart';
import 'package:shop/dummy_data.dart';
import 'package:shop/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;
  //bool _showFavoriteOnly = false;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems {
    return _items.where((prod) => prod.isFavorite).toList();
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

  int get itemsCount {
    return _items.length;
  }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  //   void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }
}
