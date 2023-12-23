import 'package:black_mamba/data/models/massage_item.dart';
import 'package:black_mamba/screens/service_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HeadlineSection extends StatefulWidget {
  const HeadlineSection({super.key});

  @override
  State<HeadlineSection> createState() => _HeadlineSectionState();
}

class _HeadlineSectionState extends State<HeadlineSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: massageList.length,
        itemBuilder: (context, index) {
          final item = massageList[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .65,
              width: MediaQuery.of(context).size.width * .90,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ServiceDetailsPage(
                        title: item.title.toString(),
                        description: item.description.toString(),
                        amount: item.amount.toString(),
                        amountTitle: item.amountTitle.toString(),
                        image: item.image.toString(),
                        imgSubTitle: item.imgSubtitle.toString(),
                        imgTitle: item.imgTitle.toString(),
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26.0),
                      child: Image.asset(
                        item.image,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      top: 20,
                      left: 30,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          item.amountTitle,
                          style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 20,
                      right: 10,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.heart,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 40,
                      left: 40,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\$${item.amount}',
                          style: GoogleFonts.ubuntu(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: 20,
                      bottom: 10,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '${item.imgTitle} \n${item.imgSubtitle}',
                          style: GoogleFonts.ubuntu(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
