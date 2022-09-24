import 'package:flutter/material.dart';

import '../model/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items => [..._items];

  int get itemsCount => _items.length;

  Place itemByIndex({required int index}) => _items[index];
}
