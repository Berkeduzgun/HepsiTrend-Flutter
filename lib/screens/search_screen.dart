import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Ara",
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text(
            "Son Aramalar",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("iPhone"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Kulaklık"),
            onTap: () {},
          ),
          
          SizedBox(height: 20),
          Text(
            "Kategoriler",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text("Elektronik"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            child: Text("Moda"),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            child: Text("Ev & Yaşam"),
          ),
          
          SizedBox(height: 20),
          Text(
            "Öneriler",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("MacBook"),
            subtitle: Text("Popüler"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Samsung"),
            subtitle: Text("Çok aranan"),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}