import 'package:calculator_app/Constants/color.dart';
import 'package:calculator_app/Provider/CalculatorProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Equalbutton extends StatelessWidget {
  const Equalbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalCulatorProvider>(context, listen: false).setValue("="),
      child: Container(
          height: 160,
          width: 65,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(29),
          ),
          child: Center(
            child: Text(
              "=",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )),
    );
  }
}
