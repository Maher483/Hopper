import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Home.dart';

// ignore: camel_case_types
class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              SafeArea(
                child: Animate(
                  effects: [
                    FadeEffect(duration: 1.seconds),
                    SlideEffect(duration: 1.seconds)
                  ],
                  child: Text(
                    "Hi i'm Hopper",
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SecularOne"),
                  ),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 1.seconds),
                  SlideEffect(duration: 1.seconds)
                ],
                child: Text(
                  "I can solve integration problems numerically ",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 17.sp),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 1.seconds),
                  SlideEffect(duration: 1.seconds)
                ],
                child: Text(
                  "quickly and accurately",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 17.sp),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Animate(effects: [
                FadeEffect(duration: 1.seconds),
                SlideEffect(duration: 1.seconds)
              ], child: Image.asset("images/maths (2).png", scale: 1.5)),
              const Spacer(
                flex: 9,
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 1.seconds),
                  SlideEffect(duration: 1.seconds)
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
                      minimumSize: Size(300.w, 50.h),
                      backgroundColor: const Color(0xffFF8572),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ))),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                        fontFamily: "SecularOne",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// color: const Color(0xffFF8572),
// highlightColor: const Color(0XffFCBF6C),
//   splashColor: const Color(0xff7AC0E4),