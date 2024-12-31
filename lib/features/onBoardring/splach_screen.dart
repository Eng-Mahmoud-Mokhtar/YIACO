import 'package:flutter/material.dart';
import 'package:uber_clone/features/onBoardring/user_type.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

     _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // مدة الحركة
    );

     _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

     _scaleAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.5).chain(
          CurveTween(curve: Curves.easeOut), // تصغير
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.5, end: 1.5).chain(
          CurveTween(curve: Curves.easeIn), // تكبير
        ),
        weight: 50,
      ),
    ]).animate(_controller);

    // بدء الحركة
    _controller.forward();

    // الانتظار 2 ثانية ثم الانتقال للصفحة الرئيسية بعد انتهاء الحركة
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // تأخير لمدة 2 ثانية قبل الانتقال للصفحة التالية
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => UserTypeScreen()),
          );
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
@override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value, // التحكم في الحجم
              child: Transform.rotate(
                angle: _rotationAnimation.value, // التحكم في الدوران
                child: Image.asset(
                  'assets/images/yaico.png',
                  width: 150,
                  height: 150
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
