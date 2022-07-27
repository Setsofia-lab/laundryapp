import 'package:flutter/material.dart';
import 'package:laundryapp/globalcomponents/reusablebutton.dart';
import 'package:laundryapp/globalcomponents/reusabletextfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Color(0xFF087FC2),
          body: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
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
                              "Sign Up",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'First Name',
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'Last Name',
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'Email address',
                      ),
                      reusabletextfield(
                        borderColor: Colors.black26,
                        label: 'Password',
                      ),
                      // reusabletextfield(
                      //   borderColor: Colors.black26,
                      //   label: 'Confirm Password',
                      // ),
                      reusablebutton(
                        backgroundColor: Color(0xFF087FC2),
                        borderColor: Color(0xFF087FC2),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Log In",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
