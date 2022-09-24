import 'package:flutter/material.dart';
import 'package:places_app/screens/place_form_screen.dart';
import 'package:places_app/screens/places_list_screen.dart';
import 'package:places_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        AppRoutes.PLACE_FORM: (context) => const PlaceFormScreen(),
      },
    );
  }
}
