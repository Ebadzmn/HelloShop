import 'package:e_commarce_v2_flutter/config/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String name = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(child: Image.asset(AssetsPath.logo2)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your credentials to continue',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400)),
                ),

                const SizedBox(
                  height: 32,
                ),

                // email first name last name phone number address password

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Email',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: 'Enter your Email'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'First Name',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter your First Name'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Last Name',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter your last Name'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Phone Number',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter your Phone Number'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Address',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter your Address'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Password',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter your Password'),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Sign Up')))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
