import 'package:black_mamba/data/models/massage_item.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .55,
      child: ListView.builder(
        itemCount: massageList.length,
        itemBuilder: (context, index) {
          final item = massageList[index];
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .44,
                color: Colors.red,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .44,
                color: Colors.blue,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .44,
                color: Colors.green,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .44,
                color: Colors.purple,
              ),
            ],
          );
        },
      ),
    );
  }
}
