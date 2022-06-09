import 'package:flutter/material.dart';
import 'package:splash/pages/auth/login_page.dart';
import 'package:splash/pages/auth/register_page.dart';
import 'package:splash/pages/second_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 75, 72, 72),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'SUPERBANK',
          style:
              TextStyle(fontSize: 14, letterSpacing: 8, color: Colors.white70),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Save your \n balance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/images/logo.png'),
            Container(
              width: 250,
              child: const Text(
                'Best solution to save your balance & transactions kdgf sdkjh askdjh askdj akjsdhf ,asdjh',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white54,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const CircleAvatar(
                  radius: 2.5,
                  backgroundColor: Colors.white54,
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 2.5,
                  backgroundColor: Colors.white54,
                ),
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                color: Colors.amber[700],
                child: const Text('Get Started'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ),
            const Text(
              '2020',
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text('Register'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
