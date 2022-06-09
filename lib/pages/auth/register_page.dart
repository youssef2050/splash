import 'package:flutter/material.dart';
import 'package:splash/pages/auth/login_page.dart';
import 'package:splash/widgets/public_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _familyNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            PublicTextFormField(
              controller: _usernameController,
              hint: 'Username',
              errorMessage: 'Enter Your Username',
            ),
            PublicTextFormField(
              controller: _firstNameController,
              hint: 'First Name',
              errorMessage: 'Enter Your First Name',
            ),
            PublicTextFormField(
              controller: _familyNameController,
              hint: 'Family Name',
              errorMessage: 'Enter Your family Name',
            ),
            ElevatedButton.icon(
              onPressed: () {
                final scaffold = ScaffoldMessenger.of(context);
                scaffold.showSnackBar(
                  SnackBar(
                    content: Text('Thank You: ${_usernameController.text}'),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: scaffold.hideCurrentSnackBar,
                    ),
                  ),
                );
              },
              label: const Icon(Icons.app_registration_rounded),
              icon: const Text('Register'),
            ),
            TextButton(
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
