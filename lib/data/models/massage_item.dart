import 'package:flutter_lorem/flutter_lorem.dart';

class MassageItem {
  int id;
  String imgTitle;
  String title;
  String description;
  String imgSubtitle;
  String image;
  String amountTitle;
  String amount;

  MassageItem({
    required this.id,
    required this.title,
    required this.description,
    required this.imgTitle,
    required this.imgSubtitle,
    required this.image,
    required this.amountTitle,
    required this.amount,
  });
}

final massageList = <MassageItem>[
  MassageItem(
    id: 1,
    imgTitle: 'NanoNectar Infusion',
    title: 'The Unique\nMembership Model\nof Forbidden Well',
    description: lorem(
      paragraphs: 2,
      words: 60,
    ),
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/woman_spa.jpg',
    amountTitle: 'Starts From',
    amount: '275',
  ),
  MassageItem(
    id: 2,
    title: 'The Unique\nMembership Model\nof Forbidden Well',
    description: lorem(
      paragraphs: 2,
      words: 60,
    ),
    imgTitle: 'NanoNectar Infusion',
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/facial.jpg',
    amountTitle: 'Starts From',
    amount: '275',
  ),
  MassageItem(
    id: 2,
    title: 'The Unique\nMembership Model\nof Forbidden Well',
    description: lorem(
      paragraphs: 2,
      words: 60,
    ),
    imgTitle: 'NanoNectar Infusion',
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/body_massage.png',
    amountTitle: 'Starts From',
    amount: '275',
  ),
];
