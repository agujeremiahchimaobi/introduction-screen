import 'package:flutter/material.dart';
import 'package:introscreen/signupscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 370),
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Outfit')),
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Outfit')),
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 190),
                        child: Text(
                          'Forgotten password',
                          style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Outfit',
                              color: Colors.white),
                        )),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blueAccent,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Outfit',
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                      },
                      child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Dont have an account?",
                            style: TextStyle(fontFamily: 'Outfit', fontSize: 15.0)),
                        TextSpan(
                            text: '  Sign Up',
                            style: TextStyle(fontFamily: 'Outfit', fontSize: 15.0, fontWeight: FontWeight.bold))
                      ])),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
