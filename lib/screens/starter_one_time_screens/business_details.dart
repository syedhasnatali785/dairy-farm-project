import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern01/widgets/cbuttons.dart';
import 'package:intern01/widgets/ctextfields.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _businessName = TextEditingController();
  final TextEditingController _informalName = TextEditingController();
  final TextEditingController _streetAddress = TextEditingController();
  final TextEditingController _city = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0),

          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 22,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .01),
                  Center(
                    child: Text(
                      'Dairy Farm Management System',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Signup 2 of 4'),
                  Text(
                    'Farm Info',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text('Farm Name *'),
                        Ctextfields(
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Please Enter Farm Name';
                            }
                            return null;
                          },
                          controller: _businessName,
                          prefixicon: FaIcon(FontAwesomeIcons.tag),
                          ftitle: 'e.g: Al-Jilani Dairy Farm',
                          flabel: ' Farm Name',
                        ),
                        Text('Owner Name *'),
                        Ctextfields(
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Please enter owner name';
                            }
                            return null;
                          },
                          controller: _informalName,
                          prefixicon: FaIcon(FontAwesomeIcons.faceSmile),
                          ftitle: 'e.g: Syed Hasnat Ali',
                          flabel: "Owner Name",
                        ),
                        Text('Location *'),
                        Ctextfields(
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Please enter farm address';
                            }
                            return null;
                          },
                          controller: _streetAddress,
                          prefixicon: FaIcon(FontAwesomeIcons.house),
                          ftitle: 'e.g: plot#21 ,Dina, Jhelum,Punjab, Pakistan',
                          flabel: 'Farm Address',
                        ),
                        Ctextfields(
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Please enter your total cows';
                            }
                            return null;
                          },
                          controller: _city,
                          prefixicon: FaIcon(FontAwesomeIcons.cow),
                          ftitle: 'e.g: 30',
                          flabel: 'Total Cattles',
                        ),
                      ],
                    ),
                  ),

                  Cbuttons(
                    btitle: 'Cmplete Setup',
                    ontap: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showMaterialBanner(
                          MaterialBanner(
                            content: Text('Processing Information...'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(
                                    context,
                                  ).clearMaterialBanners();
                                },
                                child: Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                        Timer(Duration(seconds: 3), () {
                          ScaffoldMessenger.of(context).clearMaterialBanners();
                        });
                      }
                    },
                  ),
                  Cbuttons(
                    btitle: 'Back',
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
