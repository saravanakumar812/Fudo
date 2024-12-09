import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utlis/theme.dart';
// import 'package:untitled/Components/theme.dart';



class AppTab extends StatelessWidget {
  final EdgeInsets? margin, padding;
  final bool isSelected;
  final String title;
  final Function() onClick;
  final bool disable;

  const AppTab({
    this.margin,
    this.padding,
    this.isSelected = false,
    this.title = '',
    required this.onClick,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !disable,
      child: GestureDetector(
        onTap: () => onClick(),
        child: Container(
          padding: padding ?? EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          margin: margin ?? EdgeInsets.symmetric(horizontal: 12, vertical: 1),
          decoration: BoxDecoration(
            color: isSelected ? AppTheme.radioButtonColor : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: isSelected ? AppTheme.radioButtonColor :AppTheme.radioButtonColor,
            ),
          ),
          height: 35,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color: isSelected ? Colors.white : AppTheme.radioButtonColor,

              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),

          ),
        ),
      ),
    );
  }
}
