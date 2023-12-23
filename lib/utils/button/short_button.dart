
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ShortButton({super.key, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.ubuntu(fontWeight: FontWeight.w700, fontSize: 16)
            ),
            onPressed: onPressed,
            child: Text(title),
          ),
        )
    );
  }
}
