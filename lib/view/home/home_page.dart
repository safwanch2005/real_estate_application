import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_application/view/home/home_properties_category/home_properties_category.dart';
import 'package:real_estate_application/view/home/home_search/home_search.dart';
import 'package:real_estate_application/view/theme/theme_data.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Find your\nproperty",
                    style: GoogleFonts.poppins(
                        height: 1.1,
                        color: AppThemeData.themeColor,
                        fontSize: 55,
                        fontWeight: FontWeight.w400),
                  ),
                  CircleAvatar(
                    backgroundColor: AppThemeData.themeColor,
                    radius: 50,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best property search",
                  style: GoogleFonts.poppins(
                      color: AppThemeData.themeColorShade,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const HomeSearch(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const HomePropertiesCategories()
            ],
          ),
        ),
      ),
    );
  }
}
