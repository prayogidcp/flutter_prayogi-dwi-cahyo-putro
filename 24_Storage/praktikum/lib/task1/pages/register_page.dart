import 'package:flutter/material.dart';
import 'package:praktikum/task1/pages/home_page.dart';
import 'package:praktikum/task1/providers/user_provider.dart';
import 'package:provider/provider.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final _formKey = GlobalKey<FormState>();
  final _controllerNama = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerNoTelpon = TextEditingController();
  final _controllerPassword = TextEditingController();
  bool _isHidePassword = false;

  @override
  void dispose() {
    _controllerNama.dispose();
    _controllerEmail.dispose();
    _controllerNoTelpon.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controllerNama,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.person),
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: "Nama"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _controllerNoTelpon,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.phone),
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: "No Telpon"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _controllerEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  isDense: true,
                  labelText: "Email"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isHidePassword,
              controller: _controllerPassword,
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isHidePassword =
                            !_isHidePassword; // Prevents focus if tap on eye
                      });
                    },
                    child: Icon(
                      _isHidePassword
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 24,
                    ),
                  ),
                  isDense: true,
                  border: const OutlineInputBorder(),
                  labelText: "Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_controllerNama.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text("WARNING!!"),
                          content: Text("Username is Empty!!"),
                        );
                      },
                    );
                  } else if (_controllerEmail.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text("WARNING!!"),
                          content: Text("Email is Empty!!"),
                        );
                      },
                    );
                  } else {
                    String username = _controllerNama.text;
                    String email = _controllerEmail.text;
                    userProvider.isRegister(false);
                    userProvider.setName(username);
                    userProvider.setEmail(email);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  }
                },
                child: const Text("Register")),
          ],
        ),
      ),
    );
  }
}
