import 'package:e_commarce_v2_flutter/config/app_logo.dart';
import 'package:e_commarce_v2_flutter/config/assets_path.dart';
import 'package:e_commarce_v2_flutter/views/auth/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});
  static const String name = '/onboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsPath.onboard))),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Applogo(),
            Text(
              textAlign: TextAlign.center,
              'Welcome \n to our store',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            ),
            Text('Ger your groceries in as fast as one hour',
                style: GoogleFonts.inter(
                  textStyle:
                      const TextStyle(fontSize: 16, color: Colors.white70),
                )),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SigninScreen.name);
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                )),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    ));
  }
}
