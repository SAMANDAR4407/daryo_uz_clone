import 'package:daryo_uz_clone/pages/host_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    next();
    super.initState();
  }
  Future<void> next() async {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => const HostPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg', height: 50),
            const SizedBox(height: 40),
            const Text(
              'Hodisalar Faktlar. Qahramonlar.\nMamlakatimiz va dunyoning asosiy yangiliklari.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
