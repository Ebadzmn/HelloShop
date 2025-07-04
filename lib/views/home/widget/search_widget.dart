import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search_widget extends StatelessWidget {
  const Search_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 52,
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF2F3F2),
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(Icons.search_sharp),
                Text(
                  '  Search Store',
                  style: GoogleFonts.inter(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
