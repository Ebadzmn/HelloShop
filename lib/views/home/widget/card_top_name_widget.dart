import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card_top_name_widget extends StatelessWidget {
  final String title;
  const Card_top_name_widget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.all(0)),
              onPressed: () {},
              child: Text('See all',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        color: AppColors.texThird,
                        fontWeight: FontWeight.w600),
                  )))
        ],
      ),
    );
  }
}
