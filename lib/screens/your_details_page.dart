import 'dart:io';

import 'package:black_mamba/common/widgets/custom_image_picker.dart';
import 'package:black_mamba/common/widgets/radio_button.dart';
import 'package:black_mamba/utils/helpers/formatted_date.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class YourDetailsPage extends StatefulWidget {
  const YourDetailsPage({super.key});

  @override
  State<YourDetailsPage> createState() => _YourDetailsPageState();
}

class _YourDetailsPageState extends State<YourDetailsPage> {
  final _nameController = TextEditingController();
  GenderTypeEnum? genderTypeEnum;
  File? image;
  String titleText = 'Select Date of Birth';
  final DateTime _dateTime = DateTime.now();

  pickImage(ImageSource source) {
    CustomImagePicker(source: source).pick(onPick: (File? image) {
      setState(() {
        this.image = image;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
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
                      image == null
                          ? Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: const Icon(
                                Icons.person,
                                size: 80,
                                color: Colors.white,
                              ),
                            )
                          : CircleAvatar(
                              maxRadius: 80.0,
                              backgroundImage: FileImage(image!),
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          _showImagePicker();
                        },
                        child: Image.asset(
                          'assets/images/ic.png',
                          width: 32,
                          height: 32,
                          fit: BoxFit.cover,
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
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
                    fontWeight: FontWeight.w700,
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
                        setState(() {
                          genderTypeEnum = GenderTypeEnum.Male;
                        });
                      },
                    ),
                    RadioButton(
                      title: GenderTypeEnum.Female.name,
                      value: GenderTypeEnum.Female,
                      genderTypeEnum: genderTypeEnum,
                      onChanged: (value) {
                        setState(() {
                          genderTypeEnum = GenderTypeEnum.Female;
                        });
                      },
                    ),
                    RadioButton(
                      title: GenderTypeEnum.Other.name,
                      value: GenderTypeEnum.Other,
                      genderTypeEnum: genderTypeEnum,
                      onChanged: (value) {
                        setState(() {
                          genderTypeEnum = GenderTypeEnum.Other;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'DOB',
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700, fontSize: 16),
                ),
                ListTile(
                  shape: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1.0)),
                  title: Text(titleText) ,
                  onTap: () {
                    setState(() {
                     // titleText = getFormattedDate(_dateTime.toString(), pattern: 'dd/ MM/ yyyy');
                    });
                  },
                  trailing: IconButton(
                    onPressed: () {
                      _showDatePicker();
                    },
                    icon: const Icon(Icons.calendar_today_outlined),
                  ),
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
                    onTap: () {
                      pickImage(ImageSource.camera);
                      Navigator.pop(context);
                    },
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
                    onTap: () {
                      pickImage(ImageSource.gallery);
                      Navigator.pop(context);
                    },
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

  void _showDatePicker() {
    showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );
  }
}
