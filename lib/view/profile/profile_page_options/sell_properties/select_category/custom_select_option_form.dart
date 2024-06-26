import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_application/controller/propertycontroller.dart';
import 'package:real_estate_application/view/theme/theme_data.dart';

// ignore: must_be_immutable
class CustomSelectOptionForm extends StatefulWidget {
  CustomSelectOptionForm({
    super.key,
    required this.text,
    required this.options,
    required this.data,
  });
  final String text;
  final List<String> options;
  int? selectedOption;
  dynamic data;

  @override
  State<CustomSelectOptionForm> createState() => _CustomSelectOptionFormState();
}

class _CustomSelectOptionFormState extends State<CustomSelectOptionForm> {
  PropertyController ctrl = Get.find();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_contains
    if (widget.options.indexOf(widget.data.toString()) != -1) {
      i = widget.options.indexOf(widget.data.toString());
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style:
              GoogleFonts.poppins(fontSize: 30, color: AppThemeData.themeColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            ...List.generate(
              widget.options.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 5),
                child: ChoiceChip(
                  backgroundColor: AppThemeData.background,
                  padding: const EdgeInsets.all(3),
                  label: Text(
                    widget.options[index],
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: AppThemeData.themeColor,
                    ),
                  ),
                  selected: widget.data == null
                      ? widget.selectedOption == index
                      : i == index,
                  selectedColor: AppThemeData.blackShade,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 25,
                    color: AppThemeData.grey,
                  ),
                  onSelected: (bool selected) {
                    setState(() {
                      widget.selectedOption = selected ? index : null;
                      setTheValue(widget.text, widget.options[index]);
                      widget.data = null;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  setTheValue(String value, String selectedValue) {
    switch (value) {
      case "Type":
        ctrl.type = selectedValue;
        break;
      case "Furnishing":
        ctrl.furnishing = selectedValue;
        break;
      case "Construction Status":
        ctrl.constructionStatus = selectedValue;
        break;
      case "Listed by":
        ctrl.listedBy = selectedValue;
        break;

      case "Car parking":
        ctrl.carParking = selectedValue;
        break;
      case "No. of Bedrooms":
        ctrl.bedrooms = selectedValue;
        break;
      case "No. of Bathrooms":
        ctrl.bathrooms = selectedValue;
        break;
      case "No. of floors":
        ctrl.floors = selectedValue;
        break;
    }
  }
}
