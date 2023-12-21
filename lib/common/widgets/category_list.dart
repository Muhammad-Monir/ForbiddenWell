import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String categoryName = '';
  List<String> categoryList = [
    'Comprehensive Therapy',
    'Skin Treatment',
    'Aromatherapy',
    'Craniofacial Therapy',
    'Deep Tissue Massage',
    'Hot Stone Massage',
    'Maxillofacial Massage',
    'Pregnancy Massage',
    'Reflexology',
    'Reiki',
    'Shiatsu',
    'Sport Massage',
    'Swedish Massage',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              final categoryItem = categoryList[index];
              return InkWell(
                onTap: () {
                  categoryName = categoryItem;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: categoryName == categoryItem
                              ? const BorderSide(
                                  width: 1.0, color: Colors.black)
                              : const BorderSide(
                                  color: Colors.transparent, width: 0.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        categoryItem.toString(),
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
