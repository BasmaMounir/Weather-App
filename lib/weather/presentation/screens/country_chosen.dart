import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/weather/cores/utils/constants.dart';

class CountryChosen extends StatefulWidget {
  static String dropdownvalue = 'Egypt';

  CountryChosen({super.key});

  @override
  State<CountryChosen> createState() => _CountryChosenState();
}

class _CountryChosenState extends State<CountryChosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Constants.blue_Violet, Constants.purpureus],
            )),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(child: Lottie.asset('Assets/Images/country.json')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Choose your country',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DropdownButton(
                        value: CountryChosen.dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: Constants.countriesName.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            CountryChosen.dropdownvalue = newValue!;
                          });
                          Navigator.pushNamed(
                              context, Constants.homeScreenRouteName);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
