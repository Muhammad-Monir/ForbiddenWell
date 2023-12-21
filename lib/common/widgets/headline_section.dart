import 'package:black_mamba/data/models/massage_item.dart';
import 'package:flutter/material.dart';

class HeadlineSection extends StatefulWidget {
  const HeadlineSection({super.key});

  @override
  State<HeadlineSection> createState() => _HeadlineSectionState();
}

class _HeadlineSectionState extends State<HeadlineSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: massageList.length,
      itemBuilder: (context, index) {
        final headline = massageList[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .73,
                  width: MediaQuery.of(context).size.width * .64,
                  child: Image.asset(
                    headline.image,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .73,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
