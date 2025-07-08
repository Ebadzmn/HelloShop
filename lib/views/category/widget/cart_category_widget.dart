import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class card_category_widget extends StatelessWidget {
  final String images;
  final String categoryName;
  final VoidCallback onAdd;
  const card_category_widget({
    super.key,
    required this.images,
    required this.categoryName,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          print('dd');
          onAdd();
        },
        child: Container(
          height: 174,
          width: 190,
          decoration: BoxDecoration(
              color: Color(0xFFEEF7F1),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Image.network(
                  images,
                  width: double.infinity,
                  height: 90,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                categoryName,
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
