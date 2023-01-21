const GOOGLE_API_KEY = 'AIzaSyAS3YE2WmpAtQ2w21crjf-7KahcLEBoTd0';
const SECRET_KEY = 'HD_NBfyFX9Vh4VlkdeM3Ttpmtnk=';

class LocationUtil {
  static String generateLocationPreviewImage({
    required double longitude,
    required double latitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap'
        '&markers=color:red%7Clabel:A%7C$latitude,$longitude'
        '&key=$GOOGLE_API_KEY';
  }
}
