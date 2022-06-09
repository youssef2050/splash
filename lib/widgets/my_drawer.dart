import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Icon(
            Icons.account_circle,
            size: 80,
            color: Colors.blue[600],
          ),
          const Text('Hi User'),
          ListTile(
            title: const Text('Login'),
            leading: const Icon(Icons.login),
            onTap: () {
              print('cliked Login');
            },
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            title: const Text('Change Password'),
            leading: const Icon(Icons.password),
            onTap: () {
              print('cliked password');
            },
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
            onTap: () {
              print('cliked Logout');
            },
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
        ],
      ),
    );
  }
}
