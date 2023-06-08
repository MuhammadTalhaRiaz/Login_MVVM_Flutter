
import 'package:flutter/material.dart';
import 'package:untitled/Components/internet_exception.dart';
import 'package:untitled/ViewModels/Splash_services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.isLogin();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.amber,
       body: Center(child: Text('Splash')),
     );
  }
}