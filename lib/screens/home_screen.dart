// ana ekran
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.app),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        backgroundColor: colors["surface"],
        elevation: 0,
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
               ListTile(
              leading: const Icon(CupertinoIcons.search),
              title: const Text('History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profile'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/q2.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
            children: [
              Text(
                "bodySmall Text",
                style: Theme.of(context).textTheme.bodySmall,
                ),
              Text(
                "bodyMedium Text",
                style: Theme.of(context).textTheme.bodyMedium,
                ),
              Text(
                "bodyMedium Text",
                style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                "displaySmall Text",
                style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                "displayMedium Text",
                style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                "displayLarge Text",
                style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                "headlineSmall Text",
                style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                "headlineMedium Text",
                style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                "headlineLarge Text",
                style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                "titleSmall Text",
                style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                "titleMedium Text",
                style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                "titleLarge Text",
                style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                "labelSmall Text",
                style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                "labelMedium Text",
                style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                "labelLarge Text",
                style: Theme.of(context).textTheme.labelLarge,
                ),
             ], 
            ),
          )
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomMenu(),
    );
  }
}
  
