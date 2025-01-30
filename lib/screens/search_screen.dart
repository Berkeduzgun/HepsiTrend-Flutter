import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Body Small Yazisi",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            "Body Medium Yazisi",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Body Large Yazisi",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Label Small Yazisi",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            "Label Medium Yazisi",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            "Label Large Yazisi",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            "Headline Small Yazisi",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Headline Medium Yazisi",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Headline Large Yazisi",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            "Title Small Yazisi",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            "Title Medium Yazisi",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Title Large Yazisi",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Display Small Yazisi",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            "Display Medium Yazisi",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Display Large Yazisi",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}