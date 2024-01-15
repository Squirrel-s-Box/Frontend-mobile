import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TileActivityRegister extends StatelessWidget {
  final DateTime date;

  TileActivityRegister({super.key, required this.date});

  final DateFormat formatter = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              TinyText(title: formatter.format(date)),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: AppColors.darkBlue,
                ),
                children: [
                  TextSpan(text: "Added "),
                  TextSpan(
                      text: "Section 1",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
                  TextSpan(text: " on "),
                  TextSpan(
                      text: "Box 1",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
                ]),
          ),
        ],
      ),
    );
  }
}
