import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background biru
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 0, 225, 255),
                  Color.fromARGB(255, 0, 225, 255),
                ],
              ),
            ),
          ),
          // Kotak putih dengan border radius di bagian bawah kanan
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 340, // Sesuaikan tinggi kontainer sesuai kebutuhan
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Stack(
                children: [
                  // Teks "Halaman Register" di kiri atas
                  Positioned(
                    top: 50,
                    left: 20,
                    child: const Text(
                      'Halaman Register',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF007BFF),
                      ),
                    ),
                  ),
                  // Logo di tengah
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white, // Background putih untuk logo
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/img/logo.png', // Path logo Anda
                        fit: BoxFit.contain, // Sesuaikan logo dengan kontainer
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Konten halaman register
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 300), // Sesuaikan jarak untuk kotak putih
                  const SizedBox(height: 20),
                  // Kotak putih untuk input email
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.email, color: Color(0xFF007BFF)),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Kotak putih untuk input password
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFF007BFF)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility : Icons.visibility_off,
                            color: Color(0xFF007BFF),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Kotak putih untuk input konfirmasi password
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFF007BFF)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                            color: Color(0xFF007BFF),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword = !_obscureConfirmPassword;
                            });
                          },
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Register Button
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika register di sini
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color.fromARGB(255, 3, 28, 139), // Warna tombol register
                      foregroundColor: Colors.white, // Warna teks tombol register
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Register', style: TextStyle(fontWeight: FontWeight.w900)),
                  ),
                  const SizedBox(height: 20),
                  // Sudah memiliki akun? Login
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Sudah memiliki akun? ",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 3, 28, 139),
                                fontWeight: FontWeight.w900,
                                fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
