
import 'package:flutter/material.dart';
import 'package:portfolio/view/global/social_media_center/social_media_center.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(250.0),
            child: Image.asset(
              'assets/image.jpg',
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          _name(context),
          const SocialMediaCenter(),
        ],
      ),
    );
  }
  _name(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HΛMZΛ',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6.0),
            child: const Text(
              'Mobile App Developer',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }

}
