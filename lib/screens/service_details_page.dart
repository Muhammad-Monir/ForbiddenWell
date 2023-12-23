import 'package:black_mamba/data/models/gua_sha_item.dart';
import 'package:black_mamba/screens/calender_status_page.dart';
import 'package:black_mamba/utils/button/short_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDetailsPage extends StatelessWidget {
  final String image,
      imgTitle,
      imgSubTitle,
      title,
      description,
      amount,
      amountTitle;

  const ServiceDetailsPage({
    required this.image,
    required this.imgTitle,
    required this.imgSubTitle,
    required this.title,
    required this.description,
    required this.amount,
    required this.amountTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.centerStart,
          colors: [
            Color(0xFFEAAB78),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Service Details',
            style:
                GoogleFonts.ubuntu(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/menu.png',
                height: 24,
                width: 24,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .35,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '$imgTitle \n$imgSubTitle',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  '\$$amount',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                'Choose Add Ons',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: guaShaList.length,
                  itemBuilder: (context, index) {
                    final guaItem = guaShaList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: InkWell(
                        onTap: () {
                          Image.asset('assets/images/select_gua_sha.png');
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                guaItem.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned.fill(
                              top: 20,
                              child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  guaItem.imgTitle,
                                  style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 20,
                              child: Align(
                                alignment: AlignmentDirectional.topCenter,
                                child: Text(
                                  '\$${guaItem.amount}',
                                  style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              bottom: 20,
                              child: Align(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text(
                                  guaItem.imgSubTitle,
                                  style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Description',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Text(
                description,
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Total: \$$amount',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  ShortButton(
                    title: 'Proceed To Booking',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CalendarStatusPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
