import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:e_commarce_v2_flutter/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/assets_path.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const String name = '/signIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 380,
            child: Image.asset(AssetsPath.signin),
          ),
          const SizedBox(
            height: 42,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              'Get your groceries \nwith nector',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w600)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: AppColors.splashbackground,
                  ),
                  hintText: 'Enter your email'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: AppColors.splashbackground,
                  ),
                  hintText: 'Enter your Password'),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Center(
              child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.name);
                  },
                  child: Text(
                    'Submit',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have Account? ',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.all(10)),
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: AppColors.primaryButton,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
