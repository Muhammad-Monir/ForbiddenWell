import 'package:black_mamba/common/widgets/category_list.dart';
import 'package:black_mamba/common/widgets/headline_section.dart';
import 'package:black_mamba/common/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackMambaHomePage extends StatelessWidget {
  const BlackMambaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0xFFEAAB78),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              title: Text(
                'Welcome!',
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/menu.png',
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              pinned: true,
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(-12.0), child: SizedBox()),
              flexibleSpace: const CustomSearchBar(),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      const CategorySection(),
                      const SizedBox(height: 20,),
                      //const HeadlineSection(),
                    ],
                  ),
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    tileColor: Colors.white70,
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
