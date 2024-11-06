// profile.dart
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Mengatur semua elemen agar sejajar di tengah
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('asset/img/Profile.jpg'), // Pastikan path ini sesuai
            ),
            const SizedBox(height: 16),
            
            // Nama Pengguna
            const Text(
              'HAWA PARIDA NURLITA', // Ganti dengan nama pengguna yang sesuai
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'hawaparidan@gmail.com', // Ganti dengan email pengguna yang sesuai
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),

            // Instagram
            const Text(
              'Instagram: Hawaparidaaa', // Ganti dengan username Instagram pengguna
              style: TextStyle(
                fontSize: 10,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),

            // Universitas
            const Text(
              'Universitas Islam Sultan Agung Semarang', // Ganti dengan nama universitas pengguna
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),

            // Alamat
            const Text(
              'Alamat: Jl. Merdeka No. 123, Jakarta', // Ganti dengan alamat pengguna
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 32),
            
            // Tombol Edit Profile
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profile'),
              onTap: () {
                // Aksi ketika Edit Profile ditekan
              },
            ),
            // Tombol Pengaturan
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Aksi ketika Settings ditekan
              },
            ),
            // Tombol Logout
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                // Aksi ketika Logout ditekan
              },
            ),
          ],
        ),
      ),
    );
  }
}
