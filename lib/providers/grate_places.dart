import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import '../model/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items => [..._items];

  int get itemsCount => _items.length;

  Place itemByIndex({required int index}) => _items[index];

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      location: PlaceLocation(latitude: 2, longitude: 12),
      image: image,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
