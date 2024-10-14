import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key});

  final webController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.dataFromString(
        '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2504.5257224738907!2d71.42003727638529!3d51.11721017172717!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4245843caa221dff%3A0x34e974e3604f916b!2s804%2C%20Almaty%20St%207%2C%20Astana%20020000%2C%20Kazakhstan!5e0!3m2!1sen!2s!4v1728632968992!5m2!1sen!2s" width="100%" height="100%" style="border:15;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>',
        mimeType: 'text/html'));
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
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
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
          const SizedBox(height: 40),
          InkWell(
            onTap: () async {
              const url = 'https://t.me/ustudykazakhstan';
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
          const SizedBox(height: 20),
          InkWell(
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
          Expanded(child: SizedBox()),
          Container(
            height: 300,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: WebViewWidget(
              controller: webController,
            ),
          ),
        ],
      ),
    );
  }
}
