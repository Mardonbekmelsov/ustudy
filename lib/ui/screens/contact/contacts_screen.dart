import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key});

  late GoogleMapController mapController;

  final LatLng curPlace =
      const LatLng(43.206980, 76.277560); // Coordinates for Astana, Kazakhstan

  // ignore: unused_element
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Контакты',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/images/phone_icon.png'),
              ),
              const SizedBox(width: 8),
              const Text(
                '+7 (700) 140 05 05',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/images/location_icon.png'),
              ),
              const SizedBox(width: 8),
              const Flexible(
                child: Text(
                  'г. Астана, ул. Алматы, 7, офис 804',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/images/gmail_icon.png'),
              ),
              const SizedBox(width: 8),
              const Text(
                'info@ustudy.kz',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () async {
              const url = 'https://t.me/ustudy';
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/telegram_icon.png'),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Напишите нам в Telegram',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () async {
              const url = 'https://wa.me/77001400505';
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/whatsapp_icon.png'),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Напишите нам в WhatsApp',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Container(
          //   height: 200,
          //   width: 350,
          //   child: Stack(
          //     children: [
          //       GoogleMap(
          //         markers: <Marker>{Marker(markerId: MarkerId("kazakhstan"))},
          //         initialCameraPosition:
          //             CameraPosition(target: curPlace, zoom: 10),
          //         onMapCreated: _onMapCreated,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
