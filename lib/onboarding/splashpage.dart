import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF087FC2),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/washlogo.png'),
              SizedBox(
                height: 20,
              ),
              // Text(
              //   'Welcome',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 36,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Text(
                'Have your laundry done instantly \n           from any location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(color: Color(0xFF087FC2))),
                child: TextButton(
                  onPressed: () {
                    print('object');
                  },
                  child: Text('GET STARTED!'),
                ),
              )
            ],
          )),
    );
  }
}
