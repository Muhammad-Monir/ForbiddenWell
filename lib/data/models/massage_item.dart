import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

class MassageItem {
  int id;
  String title;
  String subtitle;
  String image;
  String amountTitle;
  String amount;
  Icon icon;

  MassageItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.amountTitle,
    required this.amount,
    required this.icon,
  });
}

final massageList = <MassageItem>[
  MassageItem(
    id: 1,
    title: 'NanoNectar Infusion',
    subtitle: 'Pro Nanoinfusion',
    image: 'assets/headline_images/woman_spa.jpg',
    amountTitle: 'Starts From',
    amount: '275',
    icon: const Icon(
      Iconsax.heart,
      size: 40,
    ),
  ),
  MassageItem(
    id: 2,
    title: 'NanoNectar Infusion',
    subtitle: 'Pro Nanoinfusion',
    image: 'assets/headline_images/facial.jpg',
    amountTitle: 'Starts From',
    amount: '275',
    icon: const Icon(
      Iconsax.heart,
      size: 40,
    ),
  ),
];
