import 'package:az_solar/Const/colors.dart';
import 'package:az_solar/Const/textall.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;
  late String userinputphone1;
  late String userinputemail1;
  late String userinputpassword1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                TextAll(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: kprimareyiconcolor,
                    ),
                    keyboardType: TextInputType.number),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextAll(
                    prefixIcon: Icon(
                      Icons.email,
                      color: kprimareyiconcolor,
                    ),
                    keyboardType: TextInputType.text),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextAll(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextAll(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(),
                  child: Text(
                    "إنشاء حساب",
                    style: TextStyle(
                      color: kprimareytextcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
