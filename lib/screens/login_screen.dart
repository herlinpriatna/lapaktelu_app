import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul dan Spasi
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 8.0), // Spasi antara judul dan teks kecil
                  Text(
                    'Silahkan login dengan menggunakan akun anda yang telah terdaftar.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            // Form Login
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Tindakan ketika teks 'lupa password?' diklik
                  print('Lupa password? diklik');
                },
                child: const Text(
                  'Lupa password?',
                  style: TextStyle(
                    color: Color(0xFF3570D6), // Ubah warna teks jika diinginkan
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika login dapat ditambahkan di sini
                String username = _usernameController.text;
                String password = _passwordController.text;
                // Contoh sederhana validasi
                if (username == 'user' && password == 'password') {
                  // Login berhasil
                  print('Login berhasil');
                } else {
                  // Login gagal
                  print('Login gagal');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3570D6),
                foregroundColor: Colors.white,
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 30.0),
            const Center(
              child: Text('Belum punya akun?'),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  print('Belum punya akun? diklik');
                },
                child: const Text(
                  'Daftar Disini',
                  style: TextStyle(
                    color: Color(0xFF3570D6), // Ubah warna teks jika diinginkan
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
