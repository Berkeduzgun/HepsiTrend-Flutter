import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[50],
    appBar: AppBar(
      title: const Text("Profil"),
      backgroundColor: Colors.blue[600],
      foregroundColor: Colors.white,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[100],
                    child: const Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  const SizedBox(height: 12),
                  const Text("Profile Screen", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  const Text("Berke Duzgun", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Chip(
                    label: Text("berkedzgn@outlook.com"),
                    backgroundColor: Color(0xFFF5F5F5),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          if (context.canPop())
            Card(
              child: ListTile(
                leading: const Icon(Icons.arrow_back),
                title: const Text("Geri Git"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  context.pop();
                },
              ),
            ),
          
          const SizedBox(height: 8),
          
          Card(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text("Hesaptan Çıkış Yap"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFEBEE),
                foregroundColor: const Color(0xFFD32F2F),
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ),
          
          const SizedBox(height: 8),
          
          Card(
            child: ListTile(
              leading: const Icon(CupertinoIcons.moon),
              title: const Text("Karanlık Tema"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: const BottomMenu(),
  );
}
}