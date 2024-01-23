import 'package:flutter/material.dart';
import 'package:jumping_page/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
          //login
          body: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    // Logo
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        //logo image
                        const Image(
                            height: 70,
                            width: 70,
                            image: AssetImage('assits/apps-store.png')),
            
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //appric
                            const Text(
                              'APPRIC',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'lemon',
                              ),
                            ),
                            //smc pvt ltd
                            Text(
                              '(SMC-PVT) LTD',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                                fontFamily: 'MerriweatherSans-SemiBold',
                              ),
                            ),
                          ],
                        ),
                        //appric text
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    // Login text
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Genos',
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // under login sentence
                    Text(
                      'You are where you find the best,\n you are locking for! ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    //enter email area
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey.shade800,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    // enter password area
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey.shade800,
                          ),
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Forget Password?',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                    // login button
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //inside button login
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey.shade200,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    //not have an account $ Signup
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //not have an account
                      children: [
                        Center(
                          child: Text(
                            'Not have an account?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                        //signup
                        Text(
                          'SignUp',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue.shade600,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                     Center(
                            child: TextButton(onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const ScreenTwo()));
                          }, 
                          child: const Text('Next',style: TextStyle(decoration: TextDecoration.underline),)),
            )
                  ],
                ),
              ),
            ),
          ),
      //////////////////////////////////
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: const Text('Login Page'),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const Text('Welcome at Screen One'),
      //       Center(
      //         child: TextButton(onPressed: (){
      //         Navigator.push(context,
      //          MaterialPageRoute(builder: (context) => const ScreenTwo()));
      //       }, 
      //       child: const Text('Next Page')),
      //       ),
            
      //     ],
      //   ),
      // ),
    );
  }
}
