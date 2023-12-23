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
    title: 'The Unique Membership Model of Forbidden Well',
    description:
        'A massage stick is used by rolling it over an area with muscle tension or pain and this helps work any knots, ease muscles and take the stress off joints. Due to the shape of massage sticks, they are used primarily for body parts like the calves and thighs ',
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/woman_spa.jpg',
    amountTitle: 'Starts From',
    amount: '275',
  ),
  MassageItem(
    id: 2,
    title: 'The Unique Membership Model of Forbidden Well',
    description:
        'A massage stick is used by rolling it over an area with muscle tension or pain and this helps work any knots, ease muscles and take the stress off joints. Due to the shape of massage sticks, they are used primarily for body parts like the calves and thighs ',
    imgTitle: 'NanoNectar Infusion',
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/facial.jpg',
    amountTitle: 'Starts From',
    amount: '275',
  ),
  MassageItem(
    id: 2,
    title: 'The Unique Membership Model of Forbidden Well',
    description:
        'A massage stick is used by rolling it over an area with muscle tension or pain and this helps work any knots, ease muscles and take the stress off joints. Due to the shape of massage sticks, they are used primarily for body parts like the calves and thighs ',
    imgTitle: 'NanoNectar Infusion',
    imgSubtitle: '(Pro Nanoinfusion)',
    image: 'assets/headline_images/body_massage.png',
    amountTitle: 'Starts From',
    amount: '275',
  ),
];
