
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaCenter extends StatelessWidget {
  const SocialMediaCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _socialMedia();
  }

  _socialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
            var url = Uri.parse(
                'https://www.linkedin.com/in/hamza-ghulam-nabi-0078a820b/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              await launchUrl(url);
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: 18.0),
            child: Image.asset(
              'assets/linkedin.png',
              height: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            var url = Uri.parse(
                'https://www.facebook.com/hamzaghulamnabirizvi/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              await launchUrl(url);
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: 18.0),
            child: Image.asset(
              'assets/facebook.png',
              height: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            var url = Uri.parse(
                'https://www.instagram.com/hamza__rizvi/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              await launchUrl(url);
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: 18.0),
            child: Image.asset(
              'assets/instagram.png',
              height: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

}
