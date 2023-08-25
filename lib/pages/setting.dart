import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/contactus.dart';
import '../components/review.dart';

class Setting extends StatelessWidget {
  Setting({super.key});

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  final Uri _url = Uri.parse('https://shakeshacksidraksa.wi-q.com/terms_conditions');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 84.0),
          child: Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          // const SizedBox(height: 40),
          // const Text('Settings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 14),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: const [
                Icon(
                  Icons.person,
                  color: Color(0xff74ac2c),
                ),
                Text(
                  ' Manage account',
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: const [
                Icon(Icons.payment_outlined, color: Color(0xff74ac2c)),
                Text(' Payment method', style: TextStyle(fontSize: 20)),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  Icon(
                    Icons.settings,
                    color: Color(0xff74ac2c),
                  ),
                  Text(
                    ' General',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: const [
                Icon(Icons.language_outlined, color: Color(0xff74ac2c)),
                Text(' Language', style: TextStyle(fontSize: 20)),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [
                const Icon(Icons.contact_phone_outlined, color: Color(0xff74ac2c)),
                InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const ContactUs(),
                      ),
                    );
                  },
                  child: const Text(
                    ' Contact Us',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [
                const Icon(Icons.reviews_outlined, color: Color(0xff74ac2c)),
                InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const Review(),
                      ),
                    );
                  },
                  child: const Text(
                    ' Reviews',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: _launchUrl,
            child: const Text(
              'Terms and Conditions',
              style: TextStyle(color: Color(0xff74ac2c), decoration: TextDecoration.underline),
            ),
          ),
        ]),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
