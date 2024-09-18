// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calculator_app/Provider/CalculatorProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calculator_app/Constants/color.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  final String lableNo;
  final Color? color;
  const CustomButton({Key? key, required this.lableNo, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalCulatorProvider>(context, listen: false)
          .setValue(lableNo),
      child: Material(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        elevation: 3,
        child: CircleAvatar(
          radius: 36,
          backgroundColor: color,
          child: Text(lableNo,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              )),
        ),
      ),
    );
  }
}
