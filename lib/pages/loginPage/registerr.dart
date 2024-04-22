import 'package:fintech_dashboard_clone/styles/styles.dart';
import 'package:flutter/material.dart';

class Registerr extends StatefulWidget {
  const Registerr({Key? key}) : super(key: key);

  @override
  State<Registerr> createState() => _RegisterrState();
}

class _RegisterrState extends State<Registerr> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopLogin();
      } else {
        return MobileLogin();
      }
    });
  }
}

//Desktop screen
class DesktopLogin extends StatefulWidget {
  const DesktopLogin({Key? key}) : super(key: key);

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
              flex: 7, // 70% của chiều rộng màn hình
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/imager_2_59100_700.jpg'),
                  fit: BoxFit.contain,
                )),
              )),
          Expanded(
            flex: 3, // 30% của chiều rộng màn hình
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 20.0, bottom: 20.0),
              child: Container(
                child: LoginForm(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Mobile screen
class MobileLogin extends StatefulWidget {
  const MobileLogin({Key? key}) : super(key: key);

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: LoginForm(context),
    ));
  }
}

//Form login
Widget LoginForm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Sign Up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 50),
          textInput("Full name", "Enter your full name....", false),
          textInput("Email", "Enter your email address....", false),
          textInput("Password", "Enter your password....", true),
          textInput("Repeat Password", "Enter your repeat password....", true),
          Row(
            children: [
              MaterialButton(
                color: Colors.blue,
                height: 45,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Đặt bán kính bo góc tại đây
                  side: const BorderSide(
                      color: Colors.blue), // Nếu bạn muốn có viền
                ),
                onPressed: () {},
                child: const Text('Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              const SizedBox(
                width: 50,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign in',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Column textInput(String title, String content, bool password) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('$title*', style: const TextStyle(fontSize: 16)),
      TextField(
        obscureText: password,
        decoration: InputDecoration(
            hintText: content,
            hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 10)),
      ),
      const SizedBox(height: 30),
    ],
  );
}
