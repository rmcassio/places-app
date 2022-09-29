import 'package:flutter/material.dart';
import 'package:places_app/providers/grate_places.dart';
import 'package:places_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Places'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Consumer<GreatPlaces>(
          child: const Center(child: Text('Nenhum local cadastrado.')),
          builder: (context, greatPlaces, child) => greatPlaces.itemsCount == 0
              ? child!
              : ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.itemByIndex(index: index).image,
                      ),
                    ),
                    title: Text(
                      greatPlaces.itemByIndex(index: index).title,
                    ),
                    onTap: () {},
                  ),
                  itemCount: greatPlaces.itemsCount,
                ),
        ),
      ),
    );
  }
}
