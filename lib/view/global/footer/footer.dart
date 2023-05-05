import 'package:flutter/material.dart';
import 'package:portfolio/view/global/social_media_center/social_media_center.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if(constraints.maxWidth>480){
                    return Row(
                      // alignment: WrapAlignment.spaceEvenly,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _name(context),
                        _contact(context),
                        _address(context),
                        const SocialMediaCenter(),
                      ],
                    );
                  }else {
                    return Column(
                      // alignment: WrapAlignment.spaceEvenly,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _name(context),
                        _contact(context),
                        _address(context),
                        const SocialMediaCenter(),
                      ],
                    );
                  }
                }
              ),
            ),
          ),
          _rights(),
        ],
      ),
    );
  }

  _name(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 14.0,
            ),
            const Text(
              'ΛMZΛ',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 14.0,
                letterSpacing: 3.0,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 6.0),
          child: const Text(
            'Mobile App Developer',
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ),
      ],
    );
  }

  _contact(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Contact',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6.0),
          child: const Text(
            'hamzarizvii@hotmail.com',
            style: TextStyle(
                color: Colors.white, letterSpacing: 1.0, fontSize: 12.0),
          ),
        ),
      ],
    );
  }

  _rights() {
    return  Container(
      width: double.infinity,
      color: const Color(0xff2F2F2F),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: const Text(
        'Copyright \u00a9 2023 by Hamza. All Rights Reserved.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
          letterSpacing: 2.0,
        ),
      ),
    );
  }

  _address(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Address',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6.0),
          child: const Text(
            'Lahore, Pakistan',
            style: TextStyle(
                color: Colors.white, letterSpacing: 1.0, fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}
