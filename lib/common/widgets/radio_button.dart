import 'package:flutter/material.dart';

enum GenderTypeEnum { Male, Female, Other }

class RadioButton extends StatelessWidget {
  RadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.genderTypeEnum,
    required this.onChanged,
}) : super (key: key);


  String? title;
  GenderTypeEnum value;
  GenderTypeEnum? genderTypeEnum;
  Function(GenderTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<GenderTypeEnum>(
        title: Text('${title}'),
        value: GenderTypeEnum.Male,
        groupValue: genderTypeEnum,
        onChanged: onChanged,
        dense: true,
        contentPadding: const EdgeInsets.all(0.0),
      ),
    );
  }
}
