import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cartItem extends StatelessWidget {
  final List<String> images;
  final String name;
  final String subdescription;
  final double price;
  final VoidCallback onAdd;
  const cartItem({
    super.key,
    required this.images,
    required this.name,
    required this.subdescription,
    required this.price,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    final String imageUrl = images.isNotEmpty ? images.first : '';
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 173,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  imageUrl,
                  width: 110,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12)),
              ),
              Text(subdescription),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${price.toString()} BDT',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.splashbackground),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.add)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
