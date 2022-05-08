import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/appTheme.dart';

class GetLoadingAnimation extends StatelessWidget {
  const GetLoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: Lottie.asset(
            'assets/lottie_animations/loadingLottieAnimation.json'),
      ),
    );
  }
}


class GetCustomCircularProgressIndicator extends StatelessWidget {
  const GetCustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
