// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:math';

class numerical_integration {
  double degreesToRadians(double d) {
    return d * (pi / 180.0);
  }

  double Trapezoidal_Integration(double a, double b, int n) {
    double aRadians = degreesToRadians(a);
    double bRadians = degreesToRadians(b);
    double deltaX = (bRadians - aRadians) / n;
    double sum = 0.5 * (sin(aRadians) + sin(bRadians));

    for (int i = 1; i < n; i++) {
      double x = aRadians + i * deltaX;
      sum += sin(x);
    }

    return (deltaX * sum);
  }
  // deltaX / degreesToRadians(1)) *
}








// double trapezoidalRule(Function(double) f, double a, double b, int n) {
//   double delta_x = (b - a) / n;
//   double? result = 0;
//   double? sum = 0;
//   List<double> valuse = [];
//   for (double i = a; i <= b; i += delta_x) {
//     valuse.add(sin(i) * (180 / pi));
//   }
//   while (b < valuse.length - 1) {
//     result =
//         result! + ((valuse[b.floor()] + valuse[b.floor() + 1]) / 2) * delta_x;
//     b++;
//   }
//   result = delta_x * 0.5 * (valuse[0] + sum! + valuse[valuse.length - 1]);

//   return result!;
// }

// double trapezoidalIntegration(Function(double) f, double a, double b, int n) {
//     double h = (b - a) / n; // Width of each trapezoid
//     double sum = 0.0;
//     for (int i = 1; i < n; i++) {
//       double x = (a + i * h);
//       sum += f(x); // Compute the value of the function at x_i
//     }
//     sum += 0.5 * (f(a) + f(b)); // Add the endpoint contributions
//     return h * sum; // Multiply by the width of each trapezoid
//   }
// double trapezoidalRule(Function(double) f, double a, double b, int n) {
//   double delta_x = (b - a) / n;
//   double? result = 0;
//   //double? sum = 0;
//   List<double> valuse = [];
//   for (double i = a; i <= b; i += delta_x) {
//     valuse.add(sin(i) * (180 / pi));
//   }
//   while (b < valuse.length - 1) {
//     result =
//         result! + ((valuse[b.floor()] + valuse[b.floor() + 1]) / 2) * delta_x;
//     b++;
//   }

//   // result = delta_x * 0.5 * (valuse[0] + sum! + valuse[valuse.length - 1]);

//   return result!;
// }
