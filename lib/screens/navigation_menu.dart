import 'package:black_mamba/screens/black_mamba_home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.calendar), label: 'Booking'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Home'),
        ],
      ),
      body: const BlackMambaHomePage(),
    );
  }
}
