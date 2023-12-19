import 'package:black_mamba/common/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourDetailsPage extends StatefulWidget {
  const YourDetailsPage({super.key});

  @override
  State<YourDetailsPage> createState() => _YourDetailsPageState();
}

class _YourDetailsPageState extends State<YourDetailsPage> {
  final _nameController = TextEditingController();
  GenderTypeEnum? genderTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Details',
              style: GoogleFonts.ubuntu(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'This allows us to personalize your experience.',
              style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.person,
                    size: 100,
                  ),
                  IconButton(
                    onPressed: () {
                      _showImagePicker();
                    },
                    icon: const Icon(
                      Icons.mode_edit_outline_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'FULL NAME',
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
                hintText: 'Input your name',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Gender',
              style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                RadioButton(
                  title: GenderTypeEnum.Male.name,
                  value: GenderTypeEnum.Male,
                  genderTypeEnum: genderTypeEnum,
                  onChanged: (value) {
                    genderTypeEnum = value;
                  },
                ),
                RadioButton(
                  title: GenderTypeEnum.Female.name,
                  value: GenderTypeEnum.Female,
                  genderTypeEnum: genderTypeEnum,
                  onChanged: (value) {
                    genderTypeEnum = value;
                  },
                ),
                RadioButton(
                  title: GenderTypeEnum.Other.name,
                  value: GenderTypeEnum.Other,
                  genderTypeEnum: genderTypeEnum,
                  onChanged: (value) {
                    genderTypeEnum = value;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _showImagePicker() {
    showModalBottomSheet(
      backgroundColor: Colors.white70,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text('Camera'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text('Gallery'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
