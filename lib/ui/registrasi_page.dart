import 'package:flutter/material.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  _RegistrasiPageState createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrasi Solani"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _namaTextField(),
                const SizedBox(height: 16),
                _emailTextField(),
                const SizedBox(height: 16),
                _passwordTextField(),
                const SizedBox(height: 16),
                _confirmPasswordTextField(),
                const SizedBox(height: 16),
                _registrationButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _namaTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(),
      ),
      controller: _namaController,
      validator: (value) {
        if (value!.length < 3) {
          return "Nama harus diisi minimal 3 karakter";
        }
        return null;
      },
    );
  }

  Widget _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Email",
        border: OutlineInputBorder(),
      ),
      controller: _emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email harus diisi';
        }
        return null;
      },
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Password",
        border: OutlineInputBorder(),
      ),
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (value!.length < 6) {
          return "Password harus diisi minimal 6 karakter";
        }
        return null;
      },
    );
  }

  Widget _confirmPasswordTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Konfirmasi Password",
        border: OutlineInputBorder(),
      ),
      obscureText: true,
      validator: (value) {
        if (value != _passwordController.text) {
          return "Konfirmasi Password tidak sama";
        }
        return null;
      },
    );
  }

  Widget _registrationButton() {
    return ElevatedButton(
      child: const Text("Registrasi Solani"),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Proses registrasi
        }
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
    );
  }
}
