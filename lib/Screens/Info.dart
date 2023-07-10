import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Home.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Information",
            style: TextStyle(
                color: Colors.black, fontSize: 25.sp, fontFamily: "SecularOne"),
          ),
        ),
        body: SizedBox(
          width: w.w,
          height: h.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/maths (3).png",
                height: 250.h,
                width: w.w,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: w.w,
                    height: 346.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55.r),
                          topRight: Radius.circular(55.r)),
                      color: const Color(0xffFF8572),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Made By",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontFamily: "SecularOne"),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Abdelrhman Ahmed ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Aly Mohamed",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Program",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontFamily: "SecularOne",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        "Software Engineering",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Under supervision",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontFamily: "SecularOne",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        "Dr.Ahmed Heikal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Animate(
                        onPlay: (controller) => controller.repeat(),
                        effects: [
                          ShakeEffect(
                              duration: 1.seconds, hz: 4, delay: 2.seconds)
                        ],
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
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
                            "Go Back",
                            style: TextStyle(
                                fontFamily: "SecularOne",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
