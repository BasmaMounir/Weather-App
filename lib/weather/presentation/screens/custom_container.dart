import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/weather/cores/utils/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 428.w,
        height: 246.h,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(25) ,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Constants.blue_Violet, Constants.lightPurpureus],
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Today',style: TextStyle(fontSize: 20)),
              Text('July, 21',style: TextStyle(fontSize: 20)),
            ],),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              color: Colors.white10,height: 1.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('19°C',style: TextStyle(fontSize: 20)),
                    Image(
                      image: AssetImage('Assets/Images/weather-Image.png'),
                      height: 66.h,
                      width: 66.w,
                    ),
                    Text('15.00',style: TextStyle(fontSize: 20)),

                  ],
                ),
                Column(
                  children: [
                    Text('19°C',style: TextStyle(fontSize: 20)),
                    Image(
                      image: AssetImage('Assets/Images/weather-Image.png'),
                      height: 66.h,
                      width: 66.w,
                    ),
                    Text('15.00',style: TextStyle(fontSize: 20)),

                  ],
                ),
                Column(
                  children: [
                    Text('19°C',style: TextStyle(fontSize: 20)),
                    Image(
                      image: AssetImage('Assets/Images/weather-Image.png'),
                      height: 66.h,
                      width: 66.w,
                    ),
                    Text('15.00',style: TextStyle(fontSize: 20)),

                  ],
                ),
                Column(
                  children: [
                    Text('19°C',style: TextStyle(fontSize: 20)),
                    Image(
                      image: AssetImage('Assets/Images/weather-Image.png'),
                      height: 66.h,
                      width: 66.w,
                    ),
                    Text('15.00',style: TextStyle(fontSize: 20)),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
