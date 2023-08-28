import 'package:celita/components/features/authentication/screens/onboarding%20screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashContent(),
    );
  }
}

class SplashContent extends StatefulWidget {
  @override
  _SplashContentState createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  void initState() {
    super.initState();
    // Start the delayed navigation after the animation duration
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CEppOnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RiveAnimation.asset(
        'assets/rive_assets/splash_screen.riv',
        fit: BoxFit.cover,
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text(
            "Working now!",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}