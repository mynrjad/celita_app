import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter/scheduler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: SplashScreen()));
}

setdata(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 4), () {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  });
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key, this.loading}) : super(key: key);
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RiveAnimation.asset('assets/rive_assets/splash_screen.riv',
            fit: BoxFit.cover, ),
      )
    );
  }
}
