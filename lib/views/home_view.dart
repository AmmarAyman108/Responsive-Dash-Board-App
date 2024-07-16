import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Food App",
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  //scale factor
  double scaleFactor = getScaleFontSize(context);
  //responsive font size
  double responsiveFontSize = fontSize * scaleFactor;
  //min - max font size
  return responsiveFontSize.clamp(fontSize * .8, fontSize * 1.2);
}

double getScaleFontSize(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
