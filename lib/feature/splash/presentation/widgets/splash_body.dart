
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_test_app/common/routes/routes.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin{

  final int _splashDuration = 2;

  final String _appTitle = 'Weather test app';
  final String _firstLetterOfCompany = 'K';
  final String _restOfCompany = 'evych Solutions';


  late final AnimationController _animationController = AnimationController(
    duration: Duration(seconds: _splashDuration),
    lowerBound: 1,
    upperBound: 1.8,
    vsync: this,
  );


  @override
  void initState() {
    _animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        context.go(Routes.main);
      }
    });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: AppGradients.splashGradient
      ),
      child: Center(
          child: AnimatedBuilder(
            animation: _animationController,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(_appTitle, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: _firstLetterOfCompany, style: TextStyle(color: Colors.orange, fontSize: 18)),
                  TextSpan(text: _restOfCompany, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500))
                ]))
              ],
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.scale(
                scale: _animationController.value,
                child: child,
              );
            }
          )
      ),
    );
  }
}
