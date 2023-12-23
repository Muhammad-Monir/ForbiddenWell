
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const LongButton({super.key, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.ubuntu(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onPressed: onPressed,
            child: Text(title),
          ),
        )
    );
  }
}
