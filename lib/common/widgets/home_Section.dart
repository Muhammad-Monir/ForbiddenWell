import 'package:black_mamba/data/models/massage_item.dart';
import 'package:black_mamba/utils/button/short_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .55,
        child: ListView.builder(
          itemCount: massageList.length,
          itemBuilder: (context, index) {
            final item = massageList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(26.0),
                    child: Image.asset(
                      item.image,
                      height: MediaQuery.of(context).size.height * .45,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    top: 20,
                    left: 20,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/mask_group.png',
                        color: Colors.white,
                        fit: BoxFit.cover,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 60,
                    left: 20,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        item.title,
                        style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: 10,
                    bottom: 7,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ShortButton(
                        title: 'Apply Now',
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
