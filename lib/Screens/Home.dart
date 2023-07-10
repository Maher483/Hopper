import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hopper/Models/numerical_integration.dart';
import 'package:hopper/Screens/Info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final textcontrolN = TextEditingController();
  static final textcontrolA = TextEditingController();
  static final textcontrolB = TextEditingController();
  static numerical_integration integration = numerical_integration();
  static int? n;
  static double? a;
  static double? b;
  // static double? resInDegree;
  double? res;
  String? error = "";

  double radiansToDegrees(double radians) {
    return radians * (pi / 180);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const info()),
                );
              },
              child: Animate(
                onPlay: (controller) => controller.repeat(),
                effects: [
                  ShakeEffect(duration: 1.seconds, hz: 6, delay: 8.seconds)
                ],
                child: Text(
                  "Hopper",
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.black,
                      fontFamily: "SecularOne"),
                ),
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10.h),
                    child: Text(
                      "Numerical Integration",
                      style:
                          TextStyle(fontSize: 25.sp, fontFamily: "SecularOne"),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  child: Text(
                    "Numerical integration, also known as numerical quadrature, is a technique for approximating definite integrals of functions using numerical methods. It has a long history dating back to ancient times, when numerical approximations of geometric figures were used for practical purposes such as land measurement and construction.",
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'Kanit'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15.h),
                  child: Text(
                    "Trapezoidal Rule",
                    style: TextStyle(fontSize: 25.sp, fontFamily: "SecularOne"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    "images/johann-bernoulli.jpg",
                    scale: 2,
                    semanticLabel: 'Johann Bernoulli',
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  child: Text(
                    "One of the most famous early methods for numerical integration was the trapezoidal rule, which was first described by the German mathematician Johann Bernoulli in the early 18th century. The trapezoidal rule involves approximating the area under a curve by dividing it into a sequence of trapezoids, and computing the sum of the areas of the trapezoids.",
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'Kanit'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15.h),
                  child: Text(
                    "How it work ?",
                    style: TextStyle(fontSize: 25.sp, fontFamily: "SecularOne"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    "images/fun 3.png",
                    scale: 3,
                    semanticLabel: 'Johann Bernoulli',
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  child: Text(
                    "The basic idea behind the trapezoidal rule is to approximate the area under a curve using trapezoids, which are simple geometric shapes that can be easily computed. To apply the trapezoidal rule, we first divide the interval of integration [a,b] into n subintervals of equal width h = (b-a)/n. We then approximate the area under the curve between adjacent points x_i and x_{i+1} using a trapezoid with base h and heights f(x_i) and f(x_{i+1})",
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'Kanit'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15.h),
                  child: Text(
                    "Let's try it ",
                    style: TextStyle(fontSize: 25.sp, fontFamily: "SecularOne"),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "n = ",
                              style: TextStyle(
                                  fontSize: 25.sp, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              width: 100.w,
                              height: 100.h,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: TextField(
                                  controller: textcontrolN,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "a = ",
                              style: TextStyle(
                                  fontSize: 25.sp, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              width: 100.w,
                              height: 100.h,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: TextField(
                                  controller: textcontrolA,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "b = ",
                              style: TextStyle(
                                  fontSize: 25.sp, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              width: 100.w,
                              height: 100.h,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: TextField(
                                  controller: textcontrolB,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  alignment: Alignment.center,
                  child: Text(
                    "$error",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SecularOne',
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (textcontrolN.text.isEmpty) {
                          error = "Enter a vaild number!!";
                        } else if (textcontrolA.text.isEmpty) {
                          error = "Enter the beginning of the interval!!";
                        } else if (textcontrolB.text.isEmpty) {
                          error = "Enter the end of the interval!!";
                        } else {
                          n = int.parse(textcontrolN.text);
                          a = double.parse(textcontrolA.text);
                          b = double.parse(textcontrolB.text);
                          res = integration.Trapezoidal_Integration(a!, b!, n!);
                          // resInDegree = radiansToDegrees(res!);
                          // error = resInDegree.toString();
                          error = res.toString();

                          print(res);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200.w, 40.h),
                        backgroundColor: const Color(0xff7AC0E4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ))),
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          fontFamily: "SecularOne",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15.h),
                  child: Text(
                    "Fun fact",
                    style: TextStyle(fontSize: 25.sp, fontFamily: "SecularOne"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    "images/maths (1).png",
                    scale: 2,
                    semanticLabel: 'Johann Bernoulli',
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 15.w, left: 15.w, bottom: 15.h),
                  child: Text(
                    "Like we tried in the previous example, which represented the integration of the function 'Sin(x)'. The more we divide the area under the curve into more areas, the greater the accuracy of the integration, and this is the secret in order to get accurate answers when you solve a problem using integration",
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'Kanit'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}/** */
/** ,*/