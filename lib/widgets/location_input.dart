import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:places_app/utils/location_util.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String? _previewImageUrl;

  Future<void> _getCurrentUserLocation() async {
    final locationData = await Location().getLocation();

    final staticMapImageUrl = LocationUtil.generateLocationPreviewImage(
      longitude: locationData.longitude!,
      latitude: locationData.latitude!,
    );

    setState(() {
      _previewImageUrl = staticMapImageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _previewImageUrl == null
              ? const Text('Localização não encontrada.')
              : Image.network(
                  _previewImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              onPressed: _getCurrentUserLocation,
              icon: Icon(
                Icons.location_on,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(
                'Localização atual',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.map,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(
                'Selecione no mapa',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
