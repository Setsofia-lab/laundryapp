import 'package:flutter/material.dart';
import 'package:laundryapp/globalcomponents/reusablebutton.dart';
import 'package:laundryapp/globalcomponents/reusabletextfield.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Color(0xFF087FC2),
          body: Stack(
            children: [
              Image.asset(
                'images/Bubbles.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      // color: Colors.black,
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Log In",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Sign Up",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Log in to your account to continue and find  \n laundary services near by at affordable prices",
                        style: TextStyle(fontSize: 18),
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'email address',
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'password',
                      ),
                      reusablebutton(
                        backgroundColor: Color(0xFF087FC2),
                        borderColor: Color(0xFF087FC2),
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
