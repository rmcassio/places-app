import 'package:flutter/material.dart';
import 'package:places_app/providers/grate_places.dart';
import 'package:places_app/screens/place_form_screen.dart';
import 'package:places_app/screens/places_list_screen.dart';
import 'package:places_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Places',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
          ).copyWith(
            secondary: Colors.amber,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.PLACE_LIST: (context) => const PlacesListScreen(),
          AppRoutes.PLACE_FORM: (context) => const PlaceFormScreen(),
        },
      ),
    );
  }
}