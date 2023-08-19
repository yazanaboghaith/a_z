import 'package:az_solar/Auth/forgetpassowrd.dart';
import 'package:az_solar/Auth/signup.dart';
import 'package:az_solar/Home/homepage.dart';

import 'package:flutter/material.dart';
import 'package:az_solar/Const/textall.dart';
import '../Const/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          image: DecorationImage(
                            image: AssetImage(
                              'images/background.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 26, right: 8, left: 8),
                              child: TextAll(
                                obscureText: false,
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: kprimareyiconcolor,
                                ),
                                suffixIcon: null,
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextAll(
                                obscureText: _passwordVisible,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: kprimareyiconcolor,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(_passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              style: ElevatedButton.styleFrom(),
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                  color: kprimareytextcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPassowrd()));
                              },
                              child: Text(
                                "هل نسيت كلمة المرور؟",
                                style: TextStyle(
                                    color: kprimareytextcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: Text(
                                    "إنشاء حساب",
                                    style: TextStyle(
                                        color: kprimareytextcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                                Text(
                                  "هل تريد إنشاء حساب؟ ",
                                  style: TextStyle(
                                      color: kprimareytextcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            )
                          ],
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
    );
  }
}
