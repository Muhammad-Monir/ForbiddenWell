import 'dart:io';

import 'package:black_mamba/common/widgets/custom_image_picker.dart';
import 'package:black_mamba/common/widgets/radio_button.dart';
import 'package:black_mamba/screens/account_verify_page.dart';
import 'package:black_mamba/utils/button/long_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final _nameController = TextEditingController();
  GenderTypeEnum? genderTypeEnum;
  File? image;
  String titleText = 'Select Date of Birth';
  DateTime? _selectedDateTime;

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
                              width: 80.0,
                              height: 80.0,
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
                    labelText: 'Input your name',
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
                  title: Text(titleText),
                  //Text('${_selectedDateTime == null}' ? '${titleText}' : '${_selectedDateTime}'),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _showDatePicker();
                        titleText = formatDateTime(_selectedDateTime!);
                      });
                    },
                    icon: const Icon(Icons.calendar_today_outlined),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                LongButton(
                  title: 'NEXT',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountVerifyPage(),
                      ),
                    );
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
      backgroundColor: Colors.blue[100],
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size: 70,
                              ),
                              Text('Camera'),
                            ],
                          ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 70,
                              ),
                              Text('Gallery'),
                            ],
                          ),
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

  void _showDatePicker() async {
    showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value != null && value != _selectedDateTime) {
        _selectedDateTime = DateTime(value.year, value.month, value.day);
        titleText = formatDateTime(_selectedDateTime!);
        //print(titleText);
      }
    });
  }

  String formatDateTime(DateTime dateTime) {
    return DateFormat('dd/ MM/ yyyy').format(dateTime);
  }
}
