import 'package:flutter/material.dart';
import 'package:portfolio/view/global/social_media_center/social_media_center.dart';
import 'package:portfolio/view/index/profile_info/profile_info.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileInfo(),
        _about(context),
      ],
    );
  }


  _about(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24.0, left: 24.0, right: 24.0),
      width: MediaQuery.of(context).size.width*0.7,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 64.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'About',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3.0,
                  fontSize: 24.0),
            ),
          ),
          _details(context),
        ],
      ),
    );
  }

  _details(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      child: const Text(
        'I am a skilled mobile app developer with experience creating high-quality applications for both iOS and Android devices. '
            'With a passion for innovation and a commitment to staying up-to-date with the latest trends in the mobile app development industry,'
            ' I excel at designing and developing user-friendly, feature-rich apps that meet the needs of today\'s mobile users.\n\nThroughout my career,'
            ' I have worked on a variety of projects across a range of industries, from healthcare and finance to social networking. '
            'I have a strong understanding of the mobile app development process, from ideation and wire framing to prototyping, developing, testing, and deployment. '
            'I have experience collaborating with cross-functional teams and communicating complex technical concepts to non-technical stakeholders.'
            '\n\nI am a creative problem-solver with a keen eye for detail and a dedication to delivering quality work on time and within budget.'
        'If you are looking for a skilled mobile app developer who can help you bring your ideas to life and deliver outstanding results,'
            ' please feel free to reach out. I am always eager to take on new challenges and explore new opportunities in the world of mobile app development.',
       style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            letterSpacing: 2.0,
            wordSpacing: 3.0),
      ),
    );
  }
}
