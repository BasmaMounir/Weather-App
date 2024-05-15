import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/weather/cores/utils/constants.dart';

class StartedView extends StatelessWidget {
  const StartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Constants.blue_Violet, Constants.purpureus],
            )),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('Assets/Images/Animation - 1715790465893.json'),
                  const Text(
                    'Weather ',
                    style: TextStyle(
                        fontSize: 64,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text('ForeCasts',
                      style: TextStyle(
                          fontSize: 64,
                          color: Constants.gold,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 25.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Constants.homeScreenRouteName);
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Constants.gold),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text('Get Start  ->',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
