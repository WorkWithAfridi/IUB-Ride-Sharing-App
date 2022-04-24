import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_theme.dart';

class GetLoadingAnimation extends StatelessWidget {
  const GetLoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: Lottie.asset(
            'assets/lottie_animations/lottie_loading_animation.json'),
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
        color: customBlack,
      ),
    );
  }
}
