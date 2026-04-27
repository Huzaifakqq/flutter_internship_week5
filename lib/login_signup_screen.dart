import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'profile_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _name = TextEditingController();
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            if (!isLogin)
              TextField(
                controller: _name,
                decoration: InputDecoration(labelText: "Name"),
              ),
            TextField(
              controller: _email,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _pass,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                final auth = AuthService();
                String? res = isLogin
                    ? await auth.login(_email.text, _pass.text)
                    : await auth.signUp(_email.text, _pass.text, _name.text);
                if (res == null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => ProfileScreen()),
                  );
                }
              },
              child: Text(isLogin ? "Login" : "Register"),
            ),
            TextButton(
              onPressed: () => setState(() => isLogin = !isLogin),
              child: Text("Switch Mode"),
            ),
          ],
        ),
      ),
    );
  }
}
