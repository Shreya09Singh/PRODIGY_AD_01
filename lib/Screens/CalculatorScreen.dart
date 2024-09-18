import 'package:calculator_app/Constants/color.dart';
import 'package:calculator_app/Provider/CalculatorProvider.dart';
import 'package:calculator_app/Widgets/CustomButton.dart';
import 'package:calculator_app/Widgets/EqualButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Calculatorscreen extends StatefulWidget {
  const Calculatorscreen({super.key});

  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  final textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<CalCulatorProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('CalculatorApp',
              style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )),
          backgroundColor: AppColors.secondaryColor,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                  controller: value.comcontroller,
                  maxLines: 2,
                  readOnly: true,
                  autofocus: true,
                  showCursor: true,
                  style: TextStyle(fontSize: 50),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.thirdColor,
                      border: InputBorder.none)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(30),
                      topEnd: Radius.circular(30)),
                  color: AppColors.thirdColor,
                ),
                height: MediaQuery.of(context).size.height * .6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                      4,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buttonList[index],
                        );
                      },
                    )),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: buttonList[index + 4],
                                ))),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: buttonList[index + 8],
                                ))),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                    3,
                                    (index) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: buttonList[index + 12],
                                        ))),
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                    3,
                                    (index) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: buttonList[index + 15],
                                        ))),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 5, bottom: 8),
                          child: Equalbutton(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}

List<Widget> buttonList = [
  CustomButton(
    lableNo: "C",
    color: AppColors.primaryColor,
  ),
  CustomButton(lableNo: "AC", color: AppColors.primaryColor),
  CustomButton(lableNo: "/", color: AppColors.primaryColor),
  CustomButton(lableNo: "X", color: AppColors.primaryColor),
  CustomButton(
    lableNo: "7",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: "8",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: "9",
    color: AppColors.secondaryColor,
  ),
  CustomButton(lableNo: "+", color: AppColors.primaryColor),
  CustomButton(lableNo: "4", color: AppColors.secondaryColor),
  CustomButton(
    lableNo: "5",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: "6",
    color: AppColors.secondaryColor,
  ),
  CustomButton(lableNo: "-", color: AppColors.primaryColor),
  CustomButton(
    lableNo: "1",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: "2",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: "3",
    color: AppColors.secondaryColor,
  ),
  CustomButton(lableNo: "%", color: AppColors.primaryColor),
  CustomButton(
    lableNo: "0",
    color: AppColors.secondaryColor,
  ),
  CustomButton(
    lableNo: ".",
    color: AppColors.primaryColor,
  ),
];
