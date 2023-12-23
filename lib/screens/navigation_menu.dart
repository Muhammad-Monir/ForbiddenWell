import 'package:black_mamba/utils/helpers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final NavigationController controller = NavigationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: MediaQuery.of(context).size.height * .068,
        selectedIndex: controller.selectedIndex,
        backgroundColor: Colors.white,
        onDestinationSelected: (value) => setState(() {
          controller.selectedIndex = value;
        }),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home', ),
          NavigationDestination(icon: Icon(Iconsax.calendar_2), label: 'Booking',),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
      body: controller.screens[controller.selectedIndex],
    );
  }
}
