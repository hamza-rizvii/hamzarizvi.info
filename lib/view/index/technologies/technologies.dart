import 'package:flutter/material.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _whatIdo(context);
  }


  _whatIdo(context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          margin: const EdgeInsets.only(bottom: 12.0,top: 24.0),
          alignment: Alignment.centerLeft,
          child: const Text(
            'What I Do',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                letterSpacing: 3.0,
                fontSize: 24.0),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          margin: const EdgeInsets.only(top: 12.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/flutter.png',
                      height: 64.0,
                      width: 64.0,
                      color: Colors.yellow,
                    ),
                    const Text(
                      'Flutter',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0,
                          wordSpacing: 3.0),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/laravel.png',
                      height: 64.0,
                      width: 64.0,
                      color: Colors.yellow,
                    ),
                    const Text(
                      'Laravel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0,
                          wordSpacing: 3.0),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/firebase.png',
                      height: 64.0,
                      width: 64.0,
                      color: Colors.yellow,
                    ),
                    const Text(
                      'Firebase',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0,
                          wordSpacing: 3.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
