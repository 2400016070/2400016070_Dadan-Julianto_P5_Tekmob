import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.blueAccent,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dadan Julianto',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'NIM: 2400016070',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Divider(height: 40, thickness: 1),
                const Text(
                  'Program Studi: Sistem Informasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Kelas: D',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Status: Flutter Developer Beginner',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}