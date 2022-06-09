import 'package:flutter/material.dart';
import 'package:splash/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isEmptyUsername = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Page'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Welcom back',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 64),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              textAlign: TextAlign.left,
              controller: usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(31, 119, 169, 244),
                label: const Text('Username'),
                floatingLabelStyle: const TextStyle(color: Colors.blue),
                prefixIcon: const Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              autofocus: true,
              validator: (String? text) {
                String _finalText = text ?? '';
                if (_finalText.trim().isEmpty) {
                  return 'Enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: generatInputDecoration(title: 'Password'),
              autofocus: true,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pop(context);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration generatInputDecoration({
    required String title,
    Widget? prefixIcon,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: const Color.fromARGB(31, 119, 169, 244),
      label: Text(title),
      floatingLabelStyle: const TextStyle(color: Colors.blue),
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  void validatUsername(String? text) {
    if (text!.trim().isEmpty) {
      _isEmptyUsername = true;
    } else {
      _isEmptyUsername = false;
    }
    setState(() {});
  }
}
