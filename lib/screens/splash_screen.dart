import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: scaffoldBackgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/images/splash_image.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Center(
              child: Image.asset('assets/images/logo.png'),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Text(
                    'توسعه',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: mainGray,
                    ),
                  ),
                  Text(
                    'Nima Naderi',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
