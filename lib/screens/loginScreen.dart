import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage('assets/AppLogo.png'),
                  width: 70.0,
                ),
                Text(
                  'Welcome again',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Stay connected with your friends at all times.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Reset password',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff95ACFF),
                      padding: EdgeInsets.symmetric(vertical: 15)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Or'),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/GoogleLogo.png'),
                                        width: 40.0,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Login with Google',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You do not have an account?'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
