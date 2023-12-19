import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum GenderTypeEnum { Male, Female, Other }

class RadioButton extends StatefulWidget {
  RadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.genderTypeEnum,
    required this.onChanged,
  }) : super(key: key);

  String? title;
  GenderTypeEnum value;
  GenderTypeEnum? genderTypeEnum;
  Function(GenderTypeEnum?)? onChanged;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<GenderTypeEnum>(
        title: Text(
          '${widget.title}',
          style: GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        value: widget.value,
        groupValue: widget.genderTypeEnum,
        onChanged: widget.onChanged,
        dense: true,
        contentPadding: const EdgeInsets.all(1.0),
      ),
    );
  }
}
